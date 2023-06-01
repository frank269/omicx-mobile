import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';

import '/app/data/constants/texts.dart';
import '/app/data/models/models.dart';
import '/app/data/services/services.dart';
import '/app/routes/pages.dart';
import 'login_repository.dart';

class LoginController extends GetxController {
  var usernameTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  var errorMsg = ''.obs;
  var remember = false.obs;

  var loginRepository = LoginRepository();
  final DbService _dbService = Get.find<DbService>();
  final CallService _callService = Get.find<CallService>();

  LoginController() {
    init();
  }
  init() async {
    usernameTextController.text = 'tiendc';
    passwordTextController.text = '123456a@A';
    var userSaved = _dbService.provider.getSavedUser();
    if (userSaved.rememberme == 'true') {
      usernameTextController.text = userSaved.username;
      passwordTextController.text = userSaved.password;
      login(false);
    }
  }

  login([isShowPopup = true]) async {
    errorMsg.value = '';
    var user = await loginRepository.login(
        usernameTextController.text, passwordTextController.text, isShowPopup);
    if (user == null || user.status != true) {
      errorMsg.value = user?.message ?? TextConstants.loginErrorText;
      return;
    }
    _dbService.currentUser = user;
    if (remember.value) {
      _dbService.provider.saveUserRequest(UserRequest(
          usernameTextController.text, passwordTextController.text, 'true'));
      _dbService.provider.saveAuthToken(user.accessToken!);
    }
    _callService.register(user.extension, passwordTextController.text,
        'MetechCall', user.fullName);

    DialogHelper.hideLoading();
    await Get.offNamed(Routes.HOME);
  }

  loginWithFirebase() {}
  loginWithFacebook() {}
  loginWithGoogle() {}
  loginWithTwitter() {}

  gotoRegisterScreen() async {
    await Get.toNamed(Routes.REGISTER);
  }

  gotoForgotPassword() async {
    await Get.toNamed(Routes.FORGOT_PASSWORD);
  }
}
