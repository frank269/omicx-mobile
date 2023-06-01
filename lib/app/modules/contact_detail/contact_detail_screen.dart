import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/core/core.dart';
import 'components/contact_detail_body.dart';
import 'contact_detail_controller.dart';

class ContactDetailScreen extends GetView<ContactDetailController> {
  const ContactDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactDetailController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: toolbarColor,
          title: Text(
            "Chi tiết contact",
            style: toolbarTextStyle,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: controller.editContact,
            ),
          ],
        ),
        body: ContactDetailBody(item: controller.contactDetail),
      ),
    );
  }
}
