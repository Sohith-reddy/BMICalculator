import 'package:flutter/material.dart';
import 'constants.dart';

const IconColor=Color(0xFFDAFD87);

class IconContent extends StatelessWidget {
  IconContent({required this.icon,required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: IconColor,
          size: 50.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}