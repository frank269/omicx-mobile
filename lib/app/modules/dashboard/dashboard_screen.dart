import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import 'components/dashboard_content.dart';
import 'components/dashboard_content_1.dart';
import 'components/dashboard_content_2.dart';
import 'dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dashboardColor,
        title: Text(
          TextConstants.dashboardTitle,
          style: toolbarTextStyle,
        ),
      ),
      body: GetBuilder<DashboardController>(
        builder: (controller) => SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: PageView.builder(
                    onPageChanged: controller.selectedPageIndex,
                    itemCount: controller.dashboardPages.length,
                    itemBuilder: (context, index) => getContentPage(
                      controller.dashboardPages[index],
                      index,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.dashboardPages.length,
                        (index) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.selectedPageIndex.value == index
                                ? menuColor
                                : const Color(0xFFD8D8D8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getContentPage(item, index) {
    switch (index) {
      case 0:
        return DashboardContent(item: item);
      case 1:
        return DashboardContent1(item: item);
      case 2:
        return DashboardContent2(item: item);
    }
  }
}
