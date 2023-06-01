import 'package:get/get.dart';

import '../../data/services/services.dart';
import '/app/data/models/models.dart';
import '/app/routes/pages.dart';
import 'user_profile_repository.dart';

class UserProfileController extends GetxController {
  var currentUser = User();
  final DbService _dbService = Get.find<DbService>();
  final CallService _callService = Get.find<CallService>();
  final userRepository = UserRepository();

  UserProfileController() {
    _getUser();
  }

  _getUser() async {
    currentUser = await userRepository.getUserDetail();
    update();
  }

  logout() {
    _dbService.provider.logOut();
    _callService.logout();
    Get.offNamed(Routes.LOGIN);
  }
}
