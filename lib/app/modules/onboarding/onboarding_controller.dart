import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/routes/pages.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  gotoLoginPage() {
    Get.offNamed(Routes.LOGIN);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      AssetsContants.ONBOARDING_IMAGE1,
      TextConstants.boardingText1,
      TextConstants.boardingDescription1,
    ),
    OnboardingInfo(
      AssetsContants.ONBOARDING_IMAGE2,
      TextConstants.boardingText2,
      TextConstants.boardingDescription2,
    ),
    OnboardingInfo(
      AssetsContants.ONBOARDING_IMAGE3,
      TextConstants.boardingText3,
      TextConstants.boardingDescription3,
    ),
  ];
}
