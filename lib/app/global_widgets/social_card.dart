import 'package:flutter/material.dart';
import '/app/core/utils/percent_width_height.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({Key? key, required this.icon, required this.press})
      : super(key: key);
  final Image icon;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0.wp),
        padding: EdgeInsets.all(3.0.wp),
        height: 12.0.hp,
        width: 12.0.wp,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
