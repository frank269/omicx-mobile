import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/core/core.dart';
import 'components/contact_edit_body.dart';
import 'contact_edit_controller.dart';

class ContactEditScreen extends GetView<ContactEditController> {
  @override
  Widget build(BuildContext context) {
    var body = ContactEditBody(item: controller.contactDetail);
    return GetBuilder<ContactEditController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: toolbarColor,
          title: Text(
            "Chỉnh sửa contact",
            style: toolbarTextStyle,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              onPressed: () => controller.saveContact(body.getContact()),
            ),
          ],
        ),
        body: body,
      ),
    );
  }
}
