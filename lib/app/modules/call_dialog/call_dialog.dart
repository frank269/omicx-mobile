import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/data/services/services.dart';
import 'package:omicx_v2/app/global_widgets/action_button.dart';

import 'call_dialog_controller.dart';

class CallDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: GetBuilder<CallDialogController>(
        init: CallDialogController(),
        builder: (controller) => buildWidget(controller),
      ),
    );
  }

  Widget buildWidget(controller) {
    switch (controller.callStateIndex.value) {
      case CallDialogState.CONNECTED:
        return connectedWidget(controller);
      case CallDialogState.CALLIN:
        return callInWidget(controller);
      case CallDialogState.CALLOUT:
        return callOutWidget(controller);
      default:
        return callOutWidget(controller);
    }
  }

  callOutWidget(CallDialogController controller) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            '${controller.username}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(controller.msg.value),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(
                icon: Icons.call_end,
                fillColor: Colors.red,
                onPressed: controller.hangup,
                title: 'Hủy bỏ',
              ),
            ],
          ),
        ],
      );

  callInWidget(CallDialogController controller) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Text(
            controller.username,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(controller.msg.value),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionButton(
                icon: Icons.call_end,
                fillColor: Colors.red,
                onPressed: controller.hangup,
                title: 'Từ chối',
              ),
              ActionButton(
                icon: Icons.call,
                fillColor: Colors.green,
                onPressed: controller.answer,
                title: 'Chấp nhận',
              ),
            ],
          ),
        ],
      );

  connectedWidget(CallDialogController controller) => Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              Text(
                controller.username,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(controller.msg.value),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    size: 20,
                    title: controller.audioMuted.value ? 'tắt mic' : 'mở mic',
                    icon:
                        controller.audioMuted.value ? Icons.mic_off : Icons.mic,
                    checked: controller.audioMuted.value,
                    onPressed: controller.muteAudio,
                  ),
                  ActionButton(
                    icon: Icons.call_end,
                    fillColor: Colors.red,
                    onPressed: controller.hangup,
                    title: 'Kết thúc',
                  ),
                  ActionButton(
                    size: 20,
                    title: controller.speakerIsOn.value
                        ? 'Loa ngoài'
                        : 'Loa trong',
                    icon: controller.speakerIsOn.value
                        ? Icons.volume_off
                        : Icons.volume_up_outlined,
                    checked: controller.speakerIsOn.value,
                    onPressed: controller.toggleSpeaker,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.green,
              ),
              onPressed: controller.minimizePopup,
            ),
          ),
        ],
      );
}
