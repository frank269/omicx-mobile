import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import 'call_history_controller.dart';
import 'components/call_history_item.dart';

class CallHistoryScreen extends StatelessWidget {
  bool loadMore(controller, scrollInfo) {
    if (!controller.isbusy &&
        scrollInfo.metrics.pixels > scrollInfo.metrics.maxScrollExtent * 0.9) {
      controller.loadMore();
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: callHistoryColor,
        title: Text(
          TextConstants.callHistoryTitle,
          style: toolbarTextStyle,
        ),
      ),
      body: GetBuilder<CallHistoryController>(
        builder: (controller) => NotificationListener<ScrollNotification>(
          child: ListView.builder(
            itemCount: controller.listHistory.length,
            itemBuilder: (context, index) {
              return CallHistoryItem(item: controller.listHistory[index]);
            },
          ),
          onNotification: (notification) => loadMore(controller, notification),
        ),
      ),
    );
  }
}
