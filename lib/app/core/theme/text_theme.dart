import 'package:flutter/material.dart';
import '../core.dart';
import '../utils/percent_width_height.dart';

TextStyle titleAnnotations =
    TextStyle(fontWeight: FontWeight.w700, fontSize: 3.0.hp);
const TextStyle bsAnnotationStyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0, color: Colors.white);
const TextStyle createdAtText = TextStyle(color: Colors.grey, fontSize: 12.0);

const TextStyle textFont16 = TextStyle(fontSize: 16);

const TextStyle textFont16Color = TextStyle(
  fontSize: 16,
  color: kPrimaryColor,
);

const textUnderline = TextStyle(decoration: TextDecoration.underline);

const headerStyle = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

final toolbarTextStyle = TextStyle(
  color: menuColor,
  fontWeight: FontWeight.bold,
);

final headingStyle = const TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.0.wp),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0.wp),
    borderSide: const BorderSide(color: kTextColor),
  );
}
