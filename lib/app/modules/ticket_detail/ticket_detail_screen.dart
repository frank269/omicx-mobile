import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import 'components/t_general_screen.dart';
import 'ticket_detail_controller.dart';

class TicketDetailScreen extends GetView<TicketDetailController> {
  const TicketDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadTicket(int.parse(Get.parameters['id'] ?? '0'));
    return DefaultTabController(
      length: 4,
      child: GetBuilder<TicketDetailController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: controller.editTicket,
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ],
            backgroundColor: toolbarColor,
            title: Text(
              "Chi tiết ticket",
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
                Tab(
                  text: "File đính kèm",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TGeneralScreen(item: controller.ticket),
              Text("Liên quan"),
              Text("Lịch sử cập nhập"),
              Text("File đính kèm"),
            ],
          ),
        ),
      ),
    );
  }
}
