import 'package:get/get.dart';
import '../data/services/services.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    injectService();
  }

  void injectService() {
    Get.put(DbService());
    Get.put(CallService());
    // Get.put(ConnectivityService());
  }
}
