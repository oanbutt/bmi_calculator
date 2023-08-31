import 'dart:math';


class CalculatorBrain {

  CalculatorBrain({ required this.height,required this.weight});
    final int height;
    final int weight;

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