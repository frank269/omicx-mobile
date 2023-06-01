import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/modules/user_profile/components/profile_form.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import 'user_profile_controller.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: profileColor,
        title: Text(
          TextConstants.profileTitle,
          style: toolbarTextStyle,
        ),
      ),
      body: GetBuilder<UserProfileController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ProfileForm(user: controller.currentUser),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: controller.logout,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Đăng xuất'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
