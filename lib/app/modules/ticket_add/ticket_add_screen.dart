import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import 'components/ticket_add_body.dart';
import 'ticket_add_controller.dart';

class TicketAddScreen extends GetView<TicketAddController> {
  final _formKey = GlobalKey<FormState>();
  final ticketbody = TicketAddBody();
  createTicket() {
    if (_formKey.currentState?.validate() == true) {
      controller.createTicket(ticketbody.getTicket());
    }
  }

  @override
  Widget build(BuildContext context) {
    ticketbody.setInfo(Get.parameters['phoneNumber'], Get.parameters['contactId']);
    return GetBuilder<TicketAddController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: toolbarColor,
          title: Text(
            "Thêm mới ticket",
            style: toolbarTextStyle,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              onPressed: createTicket,
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: ticketbody,
        ),
      ),
    );
  }
}
