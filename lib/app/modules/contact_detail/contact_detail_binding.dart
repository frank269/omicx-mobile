import 'package:get/get.dart';

import 'contact_detail_controller.dart';

class ContactDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactDetailController>(() => ContactDetailController());
  }
}
