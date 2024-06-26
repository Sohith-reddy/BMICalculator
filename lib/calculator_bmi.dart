import 'dart:math';
import 'dart:ui';

class CalculatorBmi{

  CalculatorBmi({required this.height,required this.weight});
  final int height;
  final int weight;

  double _bmi=0.0;
  
  String calculateBMI(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25.0){
      return 'OverWeight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25.0){
      return 'You have a higher than normal body weight. Try to exercise more';
    }
    else if(_bmi>18.5){
      return 'You have a healthy normal weight. Good Job!!';
    }
    else{
      return 'You have a lower than normal body weight. Try to exercise more and can eat more';
    }
  }
}