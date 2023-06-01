import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/core/core.dart';
import 'call_history_detail_controller.dart';
import 'components/general_tab.dart';

class CallHistoryDetailScreen extends GetView<CallHistoryDetailController> {
  const CallHistoryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: GetBuilder<CallHistoryDetailController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: toolbarColor,
            title: Text(
              "Chi tiết cuộc gọi",
              style: toolbarTextStyle,
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Chung",
                ),
                Tab(
                  text: "Liên quan",
                ),
                Tab(
                  text: "Lịch sử cập nhập",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GeneralTab(item: controller.callHistory),
              Text("Liên quan"),
              Text("Lịch sử cập nhập"),
            ],
          ),
        ),
      ),
    );
  }
}
