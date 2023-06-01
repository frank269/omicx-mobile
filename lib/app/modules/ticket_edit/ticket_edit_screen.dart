import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import 'components/ticket_edit_body.dart';
import 'ticket_edit_controller.dart';

class TicketEditScreen extends GetView<TicketEditController> {
  const TicketEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var body = TicketEditBody(item: controller.ticketDetail);
    return GetBuilder<TicketEditController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: toolbarColor,
          title: Text(
            "Chỉnh sửa ticket",
            style: toolbarTextStyle,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              onPressed:()=> controller.saveTicket(body.getTicket()),
            ),
          ],
        ),
        body: body,
      ),
    );
  }
}
