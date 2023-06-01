import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/data/constants/constant.dart';
import '/app/global_widgets/default_button.dart';
import '/app/modules/register/register_controller.dart';

class RegisterForm extends GetView<RegisterController> {
  final _formKey = GlobalKey<FormState>();

  register() {
    if (_formKey.currentState?.validate() == true) {
      controller.register();
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
              style: const TextStyle(
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
                    hintText: TextConstants.registerUsernameHint,
                    labelText: TextConstants.registerUsername,
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
                const SizedBox(height: 15),
                TextFormField(
                  controller: controller.passwordTextController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: node.nextFocus,
                  decoration: const InputDecoration(
                    hintText: TextConstants.registerPasswordHint,
                    labelText: TextConstants.registerPassword,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return TextConstants.loginPasswordCannotEmpty;
                    } else if ((value?.length ?? 0) < 6) {
                      return TextConstants.loginPasswordAtleastSix;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: controller.passwordTextController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: node.unfocus,
                  decoration: const InputDecoration(
                    hintText: TextConstants.registerConfirmPasswordHint,
                    labelText: TextConstants.registerConfirmPassword,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onFieldSubmitted: (_) => register,
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
          const SizedBox(
            height: 10,
          ),
          DefaultButton(
            text: TextConstants.registerButtonText,
            press: register,
          ),
        ],
      ),
    );
  }
}
