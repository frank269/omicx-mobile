import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/global_widgets/default_button.dart';
import '/app/modules/onboarding/components/onboarding_content.dart';
import 'onboarding_controller.dart';

class OnBoardingScreen extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: controller.selectedPageIndex,
                  itemCount: controller.onboardingPages.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    image: controller.onboardingPages[index].imageAsset,
                    text: controller.onboardingPages[index].title,
                    description: controller.onboardingPages[index].description,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.onboardingPages.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      DefaultButton(
                        text: TextConstants.boardingContinue,
                        press: controller.gotoLoginPage,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: controller.selectedPageIndex.value == index ? 20 : 6,
      decoration: BoxDecoration(
        color: controller.selectedPageIndex.value == index
            ? kPrimaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
