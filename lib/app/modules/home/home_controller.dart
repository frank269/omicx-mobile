import 'dart:async';

import 'package:get/get.dart';

import '../controllers.dart';
import '/app/data/services/services.dart';
import '/app/routes/pages.dart';

class HomeController extends GetxController {
  var selectedPageIndex = 0;
  var isOnCall = false;
  final _callService = Get.find<CallService>();
  StreamSubscription? _streamSubscription;
  HomeController() {}

  @override
  void onReady() {
    super.onReady();
    isOnCall = _callService.isOnCall.value;
    _streamSubscription = _callService.isOnCall.stream.listen((value) {
      isOnCall = value ?? false;
      update();
    });
  }

  @override
  void onClose() {
    super.onClose();
    _streamSubscription?.cancel();
  }

  changeIndex(int index) {
    if (index == selectedPageIndex) return;
    selectedPageIndex = index;
    switch (index) {
      case 0:
        //load dashboard
        Get.find<DashboardController>().loadData();
        break;
      case 1:
        //load call history
        Get.find<CallHistoryController>().loadData();
        break;
      case 2:
        //load call history
        Get.find<ContactsController>().loadData();
        break;
      case 3:
        //load tickets
        Get.find<TicketController>().loadData();
        break;
    }
    update();
  }

  onFloatingButtonClicked() {
    // _callService.showEndCallDialog();
    if (isOnCall) {
      _callService.showDialog();
    } else {
      Get.toNamed(Routes.DIALPAD);
    }
  }
}
