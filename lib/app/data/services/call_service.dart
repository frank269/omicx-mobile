import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get/get.dart';
import 'package:sip_ua/sip_ua.dart';

import '/app/core/core.dart';
import '/app/data/models/models.dart';
import '/app/data/providers/api_provider.dart';
import '/app/modules/call_dialog/call_dialog.dart';
import '/app/modules/call_dialog/end_call_dialog.dart';

class CallService extends GetxService implements SipUaHelperListener {
  final _callApiRepository = CallApiRepository();
  final SIPUAHelper _helper = SIPUAHelper();
  Map<String, String> _wsExtraHeaders = {
    'Origin': ' https://103.63.117.76',
    'Host': '103.63.117.76:5090'
  };
  var settings = UaSettings();

  var registerState = RegistrationState(state: RegistrationStateEnum.NONE).obs;
  var callState = CallState(CallStateEnum.NONE).obs;
  var transportState = TransportState(TransportStateEnum.NONE);
  Call? curentCall;
  var message = ''.obs;
  var isOnCall = false.obs;
  var isCallSucess = true;

  @override
  void onInit() async {
    super.onInit();
    settings.webSocketUrl = 'ws://103.63.117.76:7080';
    settings.webSocketSettings.extraHeaders = _wsExtraHeaders;
    settings.webSocketSettings.allowBadCertificate = true;
    settings.iceServers = [
      {
        'urls': 'turn:103.63.117.76:3478?transport=udp',
        'username': 'metech',
        'credential': 'metech'
      }
    ];
    _helper.addSipUaHelperListener(this);
  }

  @override
  void onClose() {
    _helper.stop();
    _helper.removeSipUaHelperListener(this);
    super.onClose();
  }

  String registerStateName() {
    return EnumHelper.getName(registerState.value.state);
  }

  String callStateName() {
    return EnumHelper.getName(callState.value.state);
  }

  var _direction = 'OUTGOING';
  String direction() {
    return _direction;
  }

  bool isCallingOut() {
    return _direction == "OUTGOING";
  }

  isRegisted() {
    return registerState.value.state == RegistrationStateEnum.REGISTERED;
  }

  register(ext, pass, displayName, agentName) async {
    ext = '1000';
    pass = '123456aA@';
    if (!isRegisted()) {
      settings.uri = 'sip:${ext}@callbot.metechvn.com';
      settings.authorizationUser = '${ext}';
      settings.password = '$pass';
      settings.displayName = displayName;
      settings.userAgent = agentName;
      settings.dtmfMode = DtmfMode.RFC2833;
      _helper.start(settings);
    }
  }

  logout() {
    _helper.stop();
  }

  int? contactId = 0;
  int? agentId = 0;

  call(String destination,
      [String userName = '', int contactId = 0, int agentId = 0]) {
    if (registerState.value.state != RegistrationStateEnum.REGISTERED) {
      DialogHelper.showToast(
          message: 'Mất kết nối đến call center, vui lòng đăng nhập lại!');
      return;
    }
    if (destination == "") {
      DialogHelper.showToast(message: 'Nhập số trước khi gọi!');
      return;
    }
    if (isOnCall.value) {
      DialogHelper.showToast(
          message: 'Đang trong cuộc gọi, vui lòng về trang chủ!');
      // sendDtmf(destination);
    } else {
      this.contactId = contactId;
      this.agentId = agentId;
      this.userName = userName;
      phoneNumber = destination;
      _helper.call(destination);
    }
  }

  sendDtmf(String tone) {
    if (isOnCall.value) {
      curentCall?.sendDTMF(tone);
    }
  }

  answer() {
    curentCall?.answer(_helper.buildCallOptions());
  }

  hangup() {
    try {
      dismissDialog();
      curentCall?.hangup();
    } on Exception catch (_) {}
  }

  unmute() {
    curentCall?.unmute(true, true);
  }

  mute() {
    curentCall?.mute(true, true);
  }

  setSpeaker(isOn) {
    if (_localStream != null) {
      speakerIsOn.value = isOn;
      _localStream?.getAudioTracks()?.first?.enableSpeakerphone(isOn);
    }
  }

  MediaStream? _localStream = null;
  MediaStream? _remoteStream = null;

  var audioMuted = false.obs;
  muteAudio() {
    if (audioMuted.value) {
      unmute();
    } else {
      mute();
    }
    audioMuted.value = !audioMuted.value;
  }

  var speakerIsOn = false.obs;
  void toggleSpeaker() {
    speakerIsOn.value = !speakerIsOn.value;
    setSpeaker(speakerIsOn.value);
  }

  void _handelStreams(CallState event) async {
    MediaStream? stream = event.stream;
    if (event.originator == 'local') {
      _localStream = stream;
      setSpeaker(false);
    }
    if (event.originator == 'remote') {
      _remoteStream = stream;
    }
  }

  void dismissDialog() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }

  void showEndCallDialog() {
    dismissDialog();
    Get.dialog(
      EndCallDialog(),
      barrierDismissible: false,
    );
  }

  void showDialog() {
    dismissDialog();
    Get.dialog(
      CallDialog(),
      barrierDismissible: false,
    );
  }

  void minimizePopup() {
    dismissDialog();
  }

  Timer? _timer;
  void _stopTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = null;
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      Duration duration = Duration(seconds: timer.tick);
      message.value = [duration.inMinutes, duration.inSeconds]
          .map((seg) => seg.remainder(60).toString().padLeft(2, '0'))
          .join(':');
    });
  }

  var userName = 'Unknown';
  var phoneNumber = '';

  ContactHistoryResponse? _createContactHistory;
  _onCallStarted() async {
    var now = DateTime.now();
    var _dialogId = now.microsecondsSinceEpoch.toString();
    _createContactHistory = await _callApiRepository.createContactHistory(
      CreateContactHistory(
        contactHistory: ContactHistory(
          tenantId: 102,
          channelType: "VOICE",
          typeDetail: 1,
          contactId: contactId,
          creatorUserId: agentId,
          phoneNumber: phoneNumber,
          status: 1,
          dialogId: _dialogId,
          isPicked: false,
          agentId: agentId,
          missingQuantity: 0,
          creationTime: now.toIso8601String(),
          callId: 0,
          id: 0,
        ),
        call: CreateContactHistoryCall(
          tenantId: 102,
          contactId: contactId,
          agentId: agentId,
          callType: 1,
          dialogId: _dialogId,
          status: 1,
          id: 0,
        ),
        callType: 1,
        contactId: contactId,
      ),
    );
    print('CallService: _createContactHistory $_createContactHistory');
  }

  _onCallPicked() async {
    var result = await _callApiRepository.changeMisstoOutbound(
      ChangeMissToOutBoundRequest(
        contactId: contactId,
        contactHistoryId: _createContactHistory?.contactHistory?.id,
        contactType: 1,
        callId: _createContactHistory?.call?.id,
        phoneNumberToChange: "",
      ),
    );
    print('CallService: changeMisstoOutbound: $result');
  }

  _onCallEnded() async {
    var result = await _callApiRepository.updateContactHistory(
      UpdateContactHistoryRequest(
        status: 2,
        id: _createContactHistory?.contactHistory?.id,
      ),
    );

    print('CallService: updateContactHistory: $result');
  }

  createInteractCart(
      statusResult, description, classify, phoneNumber, contactName) async {
    var result = await _callApiRepository.createInteractCard(
      CreateInteractCardRequest(
        tenantId: 102,
        channelType: "VOICE",
        callId: _createContactHistory?.call?.id,
        statusResult: statusResult,
        description: description,
        classify: classify,
        outboundType: "OUTBOUND",
        creatorUserId: agentId,
        phoneNumber: phoneNumber,
        contactName: contactName,
      ),
    );
    if (result) {
      DialogHelper.showToast(message: 'Lưu thành công!');
    } else {
      DialogHelper.showToast(
          message: 'Đã có lỗi xảy ra, lưu không thành công!');
    }
    print('CallService: createInteractCard: $result');
  }

  @override
  void callStateChanged(Call call, CallState state) {
    callState.value = state;
    _direction = call.direction ?? 'OUTGOING';
    switch (state.state) {
      case CallStateEnum.UNMUTED:
        audioMuted.value = false;
        break;

      case CallStateEnum.MUTED:
        audioMuted.value = true;
        break;

      case CallStateEnum.CONFIRMED:
        isOnCall.value = true;
        _startTimer();
        _onCallPicked();
        break;

      case CallStateEnum.STREAM:
        _handelStreams(callState.value);
        break;

      case CallStateEnum.CALL_INITIATION:
        curentCall = call;
        showDialog();
        _onCallStarted();
        break;

      case CallStateEnum.FAILED:
        isCallSucess = false;
        isOnCall.value = false;
        _stopTimer();
        if (isCallingOut()) showEndCallDialog();
        _onCallEnded();
        break;
      case CallStateEnum.ENDED:
        isCallSucess = true;
        isOnCall.value = false;
        _stopTimer();
        if (isCallingOut()) showEndCallDialog();
        _onCallEnded();
        break;

      default:
        break;
    }
    // userName = curentCall?.remote_display_name ?? 'Unknown';
    print('callStateChanged: ${callStateName()}');
  }

  @override
  void onNewMessage(SIPMessageRequest msg) {
    var msgBody = msg.request.body as String;
    message.value = msgBody;
    print('onNewMessage ${message}');
  }

  @override
  void registrationStateChanged(RegistrationState state) {
    registerState.value = state;
    print('registrationStateChanged: ${registerStateName()}');
  }

  @override
  void transportStateChanged(TransportState state) {
    transportState = state;
  }

  @override
  void onNewNotify(Notify ntf) {
    // TODO: implement onNewNotify
  }
}
