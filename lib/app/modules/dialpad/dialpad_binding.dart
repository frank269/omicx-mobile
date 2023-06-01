import 'package:get/get.dart';

import 'dialpad_controller.dart';

class DialpadBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DialpadController>(() => DialpadController());
  }
}
