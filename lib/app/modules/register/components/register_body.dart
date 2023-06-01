import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import '/app/data/constants/assets.dart';
import '/app/global_widgets/social_card.dart';
import '/app/modules/register/components/register_form.dart';
import '/app/modules/register/register_controller.dart';

class RegisterBody extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10), // 4%
                Text("Register Account", style: headingStyle),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                RegisterForm(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SocialCard(
                    //   icon: Image.asset(AssetsContants.FACEBOOK_ICON),
                    //   press: () {},
                    // ),
                    // SocialCard(
                    //   icon: Image.asset(AssetsContants.GOOGLE_ICON),
                    //   press: () {},
                    // ),
                    // SocialCard(
                    //   icon: Image.asset(AssetsContants.TWITTER_ICON),
                    //   press: () {},
                    // ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
