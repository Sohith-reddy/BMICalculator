import 'package:flutter/material.dart';
import 'constants.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onPressing, required this.buttonTitle,required this.icon});

  final VoidCallback onPressing;
  final String buttonTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressing,
      style: TextButton.styleFrom(
        backgroundColor: kBottomColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 12.0),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10.0),
        // width: 300.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              size: 25.0,
              icon,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}