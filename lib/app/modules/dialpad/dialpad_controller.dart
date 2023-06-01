import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/data/services/services.dart';

class DialpadController extends GetxController {
  final TextEditingController numberController = TextEditingController();
  var isRegisted = false.obs;
  CallService _callService = Get.find<CallService>();
  var _dbService = Get.find<DbService>();
  DialpadController() {
    isRegisted.value = _callService.isRegisted();
  }

  call() {
    _callService.call(
      numberController.text,
      "",
      0,
      _dbService.currentUser?.userId ?? 0,
    );
  }
}
