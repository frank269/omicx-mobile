import 'package:get/get.dart';

import '../controllers.dart';

class CallHistoryDetailController extends GetxController {
  var callHistory = Get.find<CallHistoryController>().callHistory;
  CallHistoryDetailController() {}
}
