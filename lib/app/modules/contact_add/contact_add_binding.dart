import 'package:get/get.dart';

import 'contact_add_controller.dart';

class ContactAddBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactAddController>(() => ContactAddController());
  }
}
