import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_controller.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<SettingsController>(
        builder: (controller) => Container(
          child: Center(
            child: ElevatedButton(
              child: Text('logout'),
              onPressed: controller.logout,
            ),
          ),
        ),
      ),
    );
  }
}
