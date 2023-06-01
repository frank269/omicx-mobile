import 'package:get/get.dart';

import 'ticket_detail_controller.dart';

class TicketDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketDetailController>(() => TicketDetailController());
  }
}
