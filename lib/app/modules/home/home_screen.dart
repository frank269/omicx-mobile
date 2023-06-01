// import 'package:floatingpanel/floatingpanel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/core.dart';
import '/app/modules/home/home_controller.dart';
import '/app/modules/views.dart';
import 'components/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: getBody(controller),
          bottomNavigationBar: _buildBottomBar(controller),
          floatingActionButton: FloatingActionButton(
            onPressed: controller.onFloatingButtonClicked,
            child: Icon(controller.isOnCall ? Icons.phone : Icons.dialpad),
            backgroundColor: controller.isOnCall ? Colors.green : menuColor,
          ),
        );
      },
    );
  }

  Widget _buildBottomBar(HomeController controller) {
    return CustomBottomNavBar(
      containerHeight: 70,
      selectedIndex: controller.selectedPageIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: controller.changeIndex,
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(
            Icons.view_list,
            size: 30,
            color: menuColor,
          ),
          title: const Text('Thống kê'),
          activeColor: dashboardColor,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(
            Icons.contact_phone,
            size: 30,
            color: menuColor,
          ),
          title: const Text('Lịch sử'),
          activeColor: callHistoryColor,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(
            Icons.group,
            size: 30,
            color: menuColor,
          ),
          title: const Text('Danh sách'),
          activeColor: contactsColor,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(
            Icons.assignment_turned_in,
            size: 30,
            color: menuColor,
          ),
          title: const Text('Tickets '),
          activeColor: ticketsColor,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(
            Icons.manage_accounts,
            size: 30,
            color: menuColor,
          ),
          title: const Text('Cá nhân'),
          activeColor: profileColor,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  var dashboardScreen = DashboardScreen();
  var ticketsScreen = TicketsScreen();
  var historyScreen = CallHistoryScreen();
  var contactsScreen = ContactScreen();
  var userProfile = UserProfileScreen();

  Widget getBody(HomeController controller) {
    var pages = [
      dashboardScreen,
      historyScreen,
      contactsScreen,
      ticketsScreen,
      userProfile,
    ];
    return IndexedStack(
      index: controller.selectedPageIndex,
      children: pages,
    );
  }
}
