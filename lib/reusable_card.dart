import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild,required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress,
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


class ReusableCard1 extends StatelessWidget {
  ReusableCard1({required this.colour});
  final Color colour;
  // final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}


class ReusableCard2 extends StatelessWidget {
  ReusableCard2({required this.colour,required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}