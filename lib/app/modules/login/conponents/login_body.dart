import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/global_widgets/social_card.dart';
import '/app/modules/login/conponents/login_form.dart';

import '../login_controller.dart';

class LoginBody extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.3.wp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AssetsContants.WELCOME,
                  fit: BoxFit.cover,
                  width: 80.0.wp,
                  height: 20.0.hp,
                ),
                // SizedBox(height: 1.0.wp),
                const Text(
                  TextConstants.appName,
                  style: headerStyle,
                ),
                // const Text(
                //   TextConstants.loginDescription,
                //   textAlign: TextAlign.center,
                // ),
                SizedBox(height: 0.5.hp),
                LoginForm(),
                SizedBox(height: 0.5.hp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                // SizedBox(height: 3.0.hp),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text(
                //       TextConstants.loginDontHaveAccount,
                //       style: textFont16,
                //     ),
                //     GestureDetector(
                //       onTap: controller.gotoRegisterScreen,
                //       child: const Text(
                //         TextConstants.loginSignup,
                //         style: textFont16Color,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 5.3.hp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
