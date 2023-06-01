import 'package:get/get.dart';
import '/app/routes/pages.dart';

class SplashController extends GetxController {
  splashF() async => await Future.delayed(
        const Duration(seconds: 3),
        () => Get.offNamed(Routes.LOGIN),
      );
}
