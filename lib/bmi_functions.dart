import 'dart:math';
import 'dart:ui';


class CalculatorBrain {

  CalculatorBrain({ required this.height,required this.weight,required this.age,required this.myColor,required this.myColor1});
     late int height;
     late int weight;
     late int age;
     late Color myColor;
     late Color myColor1;




     double? bmi;
String bmiCalculate(){
   bmi = weight / pow(height/100, 2);
  return bmi!.toStringAsFixed(1);
}

String getCalculation(){
  bmiCalculate();
  if(bmi! >= 25){
    return 'OVER-WEIGHT';
  }else if(bmi! >= 18.5){
    return 'NORMAL';
  }else {
    return 'UNDER-WEIGHT';
  }
}

String conditionText(){
  if(bmi! >= 25){
    return 'you have a high body weight!!';
  }else if(bmi! >= 18.5){
    return 'You have a normal body weight.Good job!!';
  }else {
    return 'You have a lower body weight.Eat more!!';
  }
}



}

