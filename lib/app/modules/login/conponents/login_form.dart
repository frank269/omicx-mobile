import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/global_widgets/default_button.dart';
import '/app/modules/login/login_controller.dart';

class LoginForm extends GetView<LoginController> {
  final _formKey = GlobalKey<FormState>();

  login() {
    if (_formKey.currentState?.validate() == true) {
      controller.login();
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Obx(
            () => Text(
              controller.errorMsg.value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.usernameTextController,
                  decoration: const InputDecoration(
                    hintText: TextConstants.loginUsernameHint,
                    labelText: TextConstants.loginUsername,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.email),
                  ),
                  textInputAction: TextInputAction.next,
                  onEditingComplete: node.nextFocus,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return TextConstants.loginUsernameCannotEmpty;
                    }
                    return null;
                  },
                ),
                SizedBox(height: 1.5.hp),
                TextFormField(
                  controller: controller.passwordTextController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () => node.unfocus(),
                  decoration: const InputDecoration(
                    hintText: TextConstants.loginPasswordHint,
                    labelText: TextConstants.loginPassword,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onFieldSubmitted: (_) => login,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return TextConstants.loginPasswordCannotEmpty;
                    } else if ((value?.length ?? 0) < 6) {
                      return TextConstants.loginPasswordAtleastSix;
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 0.5.hp,
          // ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: controller.remember.value,
                  activeColor: kPrimaryColor,
                  onChanged: controller.remember,
                ),
              ),
              GestureDetector(
                onTap: controller.remember.toggle,
                child: const Text(TextConstants.loginRememberme),
              ),
              const Spacer(),
              // GestureDetector(
              //   onTap: controller.gotoForgotPassword,
              //   child: const Text(
              //     TextConstants.loginForgotPassword,
              //     style: textUnderline,
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: 1.5.hp,
          ),
          DefaultButton(
            text: TextConstants.loginButtonText,
            press: login,
          ),
        ],
      ),
    );
  }
}
