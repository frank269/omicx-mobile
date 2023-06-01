import 'package:flutter/material.dart';
import '/app/core/core.dart';
import '/app/core/utils/percent_width_height.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 6.8.hp,
      child: ElevatedButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 4.8.wp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
