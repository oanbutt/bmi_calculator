import 'package:darvin/constants.dart';
import 'package:darvin/main.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class ResultPage extends StatelessWidget {
     ResultPage({required this.condition,required this.bmiResult,required this.situationText});

     String? condition;
     String? bmiResult;
     String? situationText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:
        Container(
          color: const Color(0xff090D27),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 30,right: 30),
                  child: Container(
                    height: 80,
                    color: Color(0xff090D27),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('YOUR RESULT',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Color(0xffCCCCCC)),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    color: Color(0xff171927),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,bottom: 70,right: 35,left: 35),
                      child: Column(
                        children: [
                          Text(condition!,style: kheadingTextStyle.copyWith(color: Color(0xff26AA63))),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 11),
                            child: Text(bmiResult!,style: TextStyle(fontSize: 85,letterSpacing: -4,color: Color(0xffCCCCCC),fontWeight: FontWeight.bold),),
                          ),
                          Text('Normal BMI range:',style: kheadingTextStyle.copyWith(color: Color(0xff67686F),letterSpacing: 1),),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25,top: 4),
                            child: Text('18.5 - 25 kg/m2',style: kheadingTextStyle.copyWith(color: Color(0xffCCCCCC)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: Text(situationText!,style: kheadingTextStyle.copyWith(color: Color(0xffCCCCCC),fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                color: Color(0xff131523),
                                width: 190,
                                height: 60,
                                child: Center(child: Text('Save Result', style: TextStyle(fontSize: 19,color: Colors.white),)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      color: Color(0xffEB1555),
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Center(child: Text('RE-CALCULATE YOUR BMI', style: TextStyle(fontSize: 19,color: Colors.white,)),
                    ),
                  ),
                )
                )
              ],
            ),
          ),
        ),
    );
  }
}
