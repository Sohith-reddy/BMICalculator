import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'calculator_bmi.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 70;
  int minWeight = 30;
  int maxWeight = 150;

  int age = 30;
  int minAge = 3;
  int maxAge = 120;

  void _increaseValue() {
    if (weight < maxWeight) {
      setState(() {
        weight++;
      });
    }
  }

  void _decreaseValue() {
    if (weight > minWeight) {
      setState(() {
        weight--;
      });
    }
  }

  void _increaseAge() {
    if (age < maxAge) {
      setState(() {
        age++;
      });
    }
  }

  void _decreaseAge() {
    if (age > minAge) {
      setState(() {
        age--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kCardColour, // Use the state variable
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kCardColour, // Use the state variable
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard2(
            colour: kCardColour,
            cardChild: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Color(0xFF3A3E51),
                    thumbColor: kBottomColor,
                    inactiveTrackColor: Color(0xFF1D1A1F),
                    overlayColor: Color(0x29DAFD87),
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 10.0,
                    ),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 20.0,
                    ),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard2(
                  colour: kCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.black,
                            ),
                            backgroundColor: kBottomColor,
                            onPressed:
                                weight == maxWeight ? null : _increaseValue,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle.copyWith(
                              fontSize: 55.0,
                            ),
                          ),
                          FloatingActionButton(
                            mini: true,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.black,
                            ),
                            onPressed:
                                weight == minWeight ? null : _decreaseValue,
                            backgroundColor: kBottomColor,
                          ),
                        ],
                      ),
                      Text(
                        'kg',
                        style: kLabelTextStyle.copyWith(
                          color: Color(0x76FFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard2(
                  colour: kCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: kLabelTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.black,
                            ),
                            backgroundColor: kBottomColor,
                            onPressed: age == maxAge ? null : _increaseAge,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle.copyWith(
                              fontSize: 55.0,
                            ),
                          ),
                          FloatingActionButton(
                            mini: true,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.black,
                            ),
                            onPressed: age == minAge ? null : _decreaseAge,
                            backgroundColor: kBottomColor,
                          ),
                        ],
                      ),
                      Text(
                        'Years',
                        style: kLabelTextStyle.copyWith(
                          color: Color(0x76FFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        BottomButton(
          buttonTitle: 'Calculate',icon: FontAwesomeIcons.arrowsRotate,
          onPressing: () {
            CalculatorBmi calc=CalculatorBmi(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ResultsPage(
                  bmiResult: calc.calculateBMI(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                );
              },
            ));
          },
        ),
      ]),
    );
  }
}

