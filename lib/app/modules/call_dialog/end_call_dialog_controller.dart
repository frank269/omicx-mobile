import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '/app/data/services/services.dart';

class EndCallDialogController extends GetxController {
  var phoneNumber = '';
  var fullNameEdittingController = TextEditingController();
  var noteEdittingController = TextEditingController();

  final _callService = Get.find<CallService>();

  var dropdownTypeItems = ['1'];
  var dropdownTypeValue = '1';
  var dropdownTypeId = '1';

  var dropdownResultItems = ['1'];
  var dropdownResultValue = '1';
  var dropdownResultId = 'KH_CO_NHU_CAU';

  var itemsType = [
    {'value': '1', 'displayName': 'Chăm sóc khách hàng'}
  ];
  var itemsResultSuccess = [
    // {'value': 'KET_NOI_THANH_CONG', 'displayName': 'Kết nối thành công'},
    {
      'value': 'KH_CO_NHU_CAU',
      'displayName': 'KH có nhu cầu, hẹn tư vấn trực tiếp'
    },
    {
      'value': 'KH_DA_CHUYEN_KHOAN',
      'displayName': 'KH đã chốt- KH đã chuyển khoản'
    },
    {'value': 'KH_KO_KY_HD', 'displayName': 'KH báo hủy, không ký HĐ'},
    {
      'value': 'KH_KY_HOAN_THIEN_HS',
      'displayName': 'KH đã ký hoàn thiện hồ sơ'
    },
    {'value': 'KH_KO_CO_NHU_CAU', 'displayName': 'KH không có nhu cầu'},
    {
      'value': 'KH_CAN_TIM_HIEU_SP',
      'displayName': 'KH cần tìm hiểu thêm về sản phẩm'
    },
    {'value': 'HEN_GOI_LAI', 'displayName': 'KH bận, hẹn gọi lại'},
  ];

  var itemsResultFailed = [
    {'value': 'NHAM_SO', 'displayName': 'Sai số'},
    {'value': 'KHONG_NGHE_MAY', 'displayName': 'KH không nghe máy'},
    {'value': 'THUE_BAO', 'displayName': 'Thuê bao không liên lạc được'},
  ];

  EndCallDialogController() {
    init();
  }

  init() async {
    dropdownTypeItems =
        itemsType.map<String>((item) => item['displayName']!).toList();
    choosedType(dropdownTypeItems[0]);
    dropdownResultItems =
        (_callService.isCallSucess ? itemsResultSuccess : itemsResultFailed)
            .map<String>((item) => item['displayName']!)
            .toList();
    choosedResult(dropdownResultItems[0]);
    phoneNumber = _callService.phoneNumber;
    fullNameEdittingController.text = _callService.userName;
  }

  choosedType(String? value) {
    dropdownTypeValue = value ?? '';
    dropdownTypeId =
        itemsType.firstWhere((item) => item['displayName'] == value)['value'] ??
            '';
    update();
  }

  choosedResult(String? value) {
    dropdownResultValue = value ?? '';
    dropdownResultId =
        (_callService.isCallSucess ? itemsResultSuccess : itemsResultFailed)
                .firstWhere((item) => item['displayName'] == value)['value'] ??
            '';
    update();
  }

  savePopup() {
    _callService.dismissDialog();
    _callService.createInteractCart(
      dropdownResultId,
      noteEdittingController.text,
      dropdownTypeId,
      phoneNumber,
      fullNameEdittingController.text,
    );
  }

  closePopup() {
    _callService.dismissDialog();
  }
}
