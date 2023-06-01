import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/core.dart';
import 'components/contact_add_body.dart';
import 'contact_add_controller.dart';

class ContactAddScreen extends GetView<ContactAddController> {
  final _formKey = GlobalKey<FormState>();
  final contactBody = ContactAddBody();
  createContact() {
    if (_formKey.currentState?.validate() == true) {
      controller.createContact(contactBody.getContact());
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactAddController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: toolbarColor,
          title: Text(
            "Thêm mới contact",
            style: toolbarTextStyle,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              onPressed: createContact,
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: contactBody,
        ),
      ),
    );
  }
}
