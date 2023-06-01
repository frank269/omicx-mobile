import 'package:flutter/material.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/core/utils/percent_width_height.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.text,
    required this.description,
    required this.image,
  }) : super(key: key);
  final String text, description, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          TextConstants.appName,
          style: TextStyle(
            fontSize: 36,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Image.asset(
          image,
          height: 32.0.hp,
          width: 62.0.wp,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
