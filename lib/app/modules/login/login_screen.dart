import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/modules/login/conponents/login_body.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoginBody(),
      ),
    );
  }
}
