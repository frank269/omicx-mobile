import 'package:get/get.dart';
import 'call_history_controller.dart';

class CallHistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallHistoryController>(() => CallHistoryController());
  }
}
