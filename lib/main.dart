import 'package:darvin/bmi_functions.dart';
import 'package:darvin/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_app_bar.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'flutter',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double slider = 0;
  int heightValue = 100;
  int weightValue = 35;
  int ageValue = 1;
  Color myColor = const Color(0xff1D1F33);
  Color myColor1 = const Color(0xff1D1F33);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
       appBar: buildAppBar(),
      body:

        Container(
          color: const Color(0xff0A0D22),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 23,left: 20,right: 3,bottom: 20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                           myColor = const Color(0xff31333F);
                           myColor1 = const Color(0xff1D1F33);
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 165,
                          decoration: BoxDecoration(
                            color: myColor ,
                            borderRadius: BorderRadius.circular(6),
                          ),
                         child: Column(
                           children: [
                             Icon(Icons.male,size: 120,color: Colors.grey[100],),
                             const Text('MALE',style: kgenderTextStyle)
                           ],
                         ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 23,left: 3,right: 20,bottom: 20),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            myColor1 = const Color(0xff31333F);
                            myColor = const Color(0xff1D1F33);
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 165,
                          decoration: BoxDecoration(
                            color: myColor1,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: [
                              Transform.rotate(
                                  angle: 19.5,
                                  child: Icon(Icons.female,size: 120,color: Colors.grey[100],)),
                              Text('FEMALE',style: kgenderTextStyle)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                height: 210,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 19,left: 19),
                decoration: BoxDecoration(
                  color: const Color(0xff1D1F33),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,),
                      child: Text('HEIGHT',style: kheadingTextStyle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$heightValue',style: kvalueTextStyle),
                        Text(' cm',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13),
                          activeTrackColor: Color(0xffFFFFFF),
                          thumbColor: Color(0xffEB1555),
                          overlayColor: Color(0x33EB1555),
                          trackHeight: 2,

                        ),
                        child: Slider(
                          value: heightValue.toDouble(),
                          divisions: 200,
                          min: 0,
                          max: 200,
                          inactiveColor: Color(0x33FFFFFF),
                          onChanged: (double newValue) {
                            setState(() {
                              heightValue = newValue.round();
                            });
                          },

                        ),
                      ),
                    ),
                  ],
                ),

              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20,right: 3,bottom: 24),
                      child: Container(
                        width: 150,
                        height: 188,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1F33),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12,bottom: 5),
                              child: Text('WEIGHT',style: kheadingTextStyle),
                            ),
                            Text('$weightValue',style: kvalueTextStyle),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3,right: 10),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        weightValue++;
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.withOpacity(0.2),
                                      maxRadius: 30,
                                     child: Icon(Icons.add,color: Colors.grey[300],size: 35,),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {

                                        if(weightValue>0){
                                          weightValue--;
                                        }
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.withOpacity(0.2),
                                      maxRadius: 30,
                                      child: FaIcon(FontAwesomeIcons.minus,color: Colors.grey[300],size: 35,),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 3,right: 20,bottom: 24),
                      child: Container(
                        width: 150,
                        height: 187,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1F33),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12,bottom: 5),
                              child: Text('AGE',style: kheadingTextStyle),
                            ),
                            Text('$ageValue',style: kvalueTextStyle),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3,right: 10),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        ageValue++;
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.withOpacity(0.2),
                                      maxRadius: 30,
                                      child: Icon(Icons.add,color: Colors.grey[300],size: 35,),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        if(ageValue>1){
                                          ageValue--;
                                        }
                                      });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.withOpacity(0.2),
                                      maxRadius: 30,
                                      child: FaIcon(FontAwesomeIcons.minus,color: Colors.grey[300],size: 35,),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  CalculatorBrain cal =  CalculatorBrain(height: heightValue, weight: weightValue);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                    condition: cal.getCalculation(),
                    bmiResult: cal.bmiCalculate(),
                    situationText: cal.conditionText(),
                  )));
                },
                child: Container(
                  color: Color(0xffEB1555),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Center(child: Text('Calculate Yout BMI', style: TextStyle(fontSize: 22,color: Colors.white),)),
                ),
              )
            ],
          ),
        )


    );
    }

  }

