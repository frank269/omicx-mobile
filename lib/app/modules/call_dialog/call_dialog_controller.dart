import 'dart:async';

import 'package:get/get.dart';
import 'package:sip_ua/sip_ua.dart';
import '/app/data/services/services.dart';

class CallDialogState {
  static const CALLOUT = 0;
  static const CALLIN = 1;
  static const CONNECTED = 2;
}

class CallDialogController extends GetxController {
  var callStateIndex = 0.obs;
  var registerStateIndex = 0.obs;
  var audioMuted = false.obs;
  var speakerIsOn = false.obs;
  var msg = ''.obs;
  String username = '';

  final _callService = Get.find<CallService>();
  CallDialogController() {}

  StreamSubscription? _stateSubscription;
  StreamSubscription? _muteSubscription;
  StreamSubscription? _speakerSubscription;
  StreamSubscription? _messageSubscription;
  @override
  void onInit() {
    super.onInit();
    audioMuted.value = _callService.audioMuted.value;
    _callService.audioMuted.stream.listen((value) {
      audioMuted.value = value ?? false;
    });
    speakerIsOn.value = _callService.speakerIsOn.value;
    _callService.speakerIsOn.stream.listen((value) {
      speakerIsOn.value = value ?? false;
    });

    onCallStateChanged(_callService.callState.value);
    _callService.callState.stream.listen((state) {
      onCallStateChanged(state);
    });

    if (_callService.isOnCall.value) {
      _messageSubscription = _callService.message.stream.listen((value) {
        msg.value = value ?? '00:00';
      });
      callStateIndex.value = CallDialogState.CONNECTED;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _stateSubscription?.cancel();
    _muteSubscription?.cancel();
    _speakerSubscription?.cancel();
    _messageSubscription?.cancel();
  }

  onCallStateChanged(CallState? state) {
    if (state == null) return;
    username = _callService.userName;
    switch (state.state) {
      case CallStateEnum.ACCEPTED:
      case CallStateEnum.CONFIRMED:
        _messageSubscription = _callService.message.stream.listen((value) {
          msg.value = value ?? '00:00';
          update();
        });
        callStateIndex.value = CallDialogState.CONNECTED;
        update();

        break;

      case CallStateEnum.CONNECTING:
        if (_callService.isCallingOut()) {
          msg.value = 'Đang gọi ra ... ';
        } else {
          msg.value = 'Đang kết nối ... ';
        }
        callStateIndex.value = CallDialogState.CALLOUT;
        update();

        break;
      case CallStateEnum.PROGRESS:
        if (_callService.isCallingOut()) {
          msg.value = 'Đang đổ chuông ... ';
          callStateIndex.value = CallDialogState.CALLOUT;
        } else {
          msg.value = 'Cuộc gọi đến';
          callStateIndex.value = CallDialogState.CALLIN;
        }
        update();

        break;

      case CallStateEnum.CALL_INITIATION:
        if (_callService.isCallingOut()) {
          //invitation -> connectting -> progress
          callStateIndex.value = CallDialogState.CALLOUT;
          msg.value = 'Đang gọi ra ... ';
        } else {
          //invitation -> progress -> accept -> connectting
          msg.value = 'Cuộc gọi đến';
          callStateIndex.value = CallDialogState.CALLIN;
        }
        update();

        break;
      default:
        break;
    }
  }

  muteAudio() {
    _callService.muteAudio();
  }

  toggleSpeaker() {
    _callService.toggleSpeaker();
  }

  hangup() {
    _callService.hangup();
  }

  answer() {
    _callService.answer();
  }

  minimizePopup() {
    _callService.minimizePopup();
  }
}
