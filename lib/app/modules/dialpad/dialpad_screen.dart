import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/global_widgets/action_button.dart';
import '/app/core/core.dart';
import 'dialpad_controller.dart';

class DialpadScreen extends GetView<DialpadController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(
          'Metech Call',
          style: toolbarTextStyle,
        ),
        backgroundColor: toolbarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.circle,
              color: controller.isRegisted.value ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextField(
                  enabled: false,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'call number',
                  ),
                  controller: controller.numberController,
                ),
                Column(
                  children: _buildNumPad(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ActionButton(
                      icon: Icons.dialer_sip,
                      fillColor: Colors.green,
                      onPressed: controller.call,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildNumPad() {
    var lables = [
      [
        {'1': '.'},
        {'2': 'abc'},
        {'3': 'def'}
      ],
      [
        {'4': 'ghi'},
        {'5': 'jkl'},
        {'6': 'mno'}
      ],
      [
        {'7': 'pqrs'},
        {'8': 'tuv'},
        {'9': 'wxyz'}
      ],
      [
        {'*': ''},
        {'0': ''},
        {'⌫': ''}
      ],
    ];

    return lables
        .map((row) => Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: row
                    .map((label) => ActionButton(
                          title: '${label.keys.first}',
                          onPressed: () => _handleNum(label.keys.first),
                          number: true,
                        ))
                    .toList())))
        .toList();
  }

  void _handleBackSpace() {
    var text = controller.numberController.text;
    if (text.isNotEmpty) {
      controller.numberController.text = text.substring(0, text.length - 1);
    }
  }

  void _handleNum(String key) {
    if (key == '⌫') {
      if (controller.numberController.text.isNotEmpty)
        controller.numberController.text = controller.numberController.text
            .substring(0, controller.numberController.text.length - 1);
    } else
      controller.numberController.text += key;
  }
}
