import 'package:get/get.dart';

import 'call_history_detail_controller.dart';

class CallHistoryDetailBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<CallHistoryDetailController>(() => CallHistoryDetailController());
  }
}