import 'package:get/get.dart';

import 'ticket_add_controller.dart';

class TicketAddBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<TicketAddController>(() => TicketAddController());
  }
}