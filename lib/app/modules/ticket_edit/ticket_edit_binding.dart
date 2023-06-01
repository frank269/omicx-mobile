import 'package:get/get.dart';

import 'ticket_edit_controller.dart';

class TicketEditBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<TicketEditController>(() => TicketEditController());
  }
}