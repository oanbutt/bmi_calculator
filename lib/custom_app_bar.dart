import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
AppBar buildAppBar() {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: const Color(0xff0A0D22),
    elevation: 12,
    shadowColor: Colors.blueGrey[900],
    leading: const Padding(
      padding: EdgeInsets.only(top: 16, left: 13),
      child: FaIcon(FontAwesomeIcons.bars, size: 25,),
    ),
    title: const Padding(
      padding: EdgeInsets.only(left: 35),
      child: Text('BMI CALCULATOR', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
    ),
  );
}