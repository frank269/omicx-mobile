import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/data/constants/constant.dart';
import '/app/modules/register/components/register_body.dart';

import 'register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConstants.registerTitle),
      ),
      body: RegisterBody(),
    );
  }
}
