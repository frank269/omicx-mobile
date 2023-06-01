import 'package:get/get.dart';

import 'contact_edit_controller.dart';

class ContactEditBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactEditController>(() => ContactEditController());
  }
}
