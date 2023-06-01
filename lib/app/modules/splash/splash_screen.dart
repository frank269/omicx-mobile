import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/values/values.dart';
import '/app/data/constants/constant.dart';
import '/app/modules/splash/splash_controller.dart';
import '/app/core/utils/percent_width_height.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.splashF();
    return Scaffold(
      backgroundColor: splashBg,
      body: SafeArea(
        child: Container(
          height: 100.0.hp,
          width: 100.0.hp,
          child: Container(
            height: 50.0.hp,
            width: 50.0.hp,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                AssetsContants.SPLASH,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
