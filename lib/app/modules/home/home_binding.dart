import 'package:get/get.dart';

import '../controllers.dart';
import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController();
    });

    Get.lazyPut<TicketController>(() {
      return TicketController();
    });

    Get.lazyPut<DashboardController>(() {
      return DashboardController();
    });

    Get.lazyPut<CallHistoryController>(() {
      return CallHistoryController();
    });

    Get.lazyPut<ContactsController>(() {
      return ContactsController();
    });

    Get.lazyPut<UserProfileController>(() {
      return UserProfileController();
    });
  }
}
