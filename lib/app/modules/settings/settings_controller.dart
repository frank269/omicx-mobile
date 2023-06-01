import 'package:get/get.dart';
import '/app/routes/pages.dart';

class SettingsController extends GetxController {
  logout() {
    Get.offNamed(Routes.LOGIN);
  }
}
