import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/modules/otp/components/otp_body.dart';
import '/app/modules/otp/otp_controller.dart';

class OtpScreen extends GetView<OtpController> {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: OtpBody(),
    );
  }
}
