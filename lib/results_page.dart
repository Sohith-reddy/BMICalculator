import 'package:bmi/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  // const ResultsPage({super.key});
  ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(18.0),
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard2(
                colour: kCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'Re-Calculate',icon: FontAwesomeIcons.arrowRotateLeft,onPressing:(){
               Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}

// FontAwesomeIcons.arrowTurnDownLeft