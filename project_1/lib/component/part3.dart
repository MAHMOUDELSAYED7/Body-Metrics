// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_single_cascade_in_expression_statements, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class myColors {
  static var appBarcolor = Color(0xFF1D1E33);
  static var cardcolor = Color(0xFF1D1E33);
  static var btnColor = Color(0xFFFD0225);
  static var textColor_W = Colors.white;
  static var unActiveColor = Color(0xFF6F7694);
  static var textColor_R = Color(0xFFFD0225);
  static var textColor_G = Color(0xFF18D876);
  static var textColor_Y = Colors.yellow;
  static var scaffoldColor = Color(0xFF04040C);
}

class myFontStyle {
  static double smallSize = 18;
  static double midSize = 24;
  static double midForResultSize = 26;
  static double largSize = 32;
  static double bigLargSize = 48;
  static double iconSize = 56;
  static double hightSize = 18;
  static double resultSize = 88;
  //BOLD
  static var smallBold = FontWeight.w200;
  static var midBold = FontWeight.w500;
  static var largBold = FontWeight.bold;
  static var bigLargBold = FontWeight.w900;
}

class myTitles {
  static String appBarTilte = "BMI CALCULATOR";
  static String maleTilte = "MALE";
  static String femaleTilte = "FEMALE";
  static String heightTilte = "HEIGHT";
  static String cmTilte = "cm";
  static String weightTilte = "weight";
  static String ageTilte = "age";
  static String btnTilte = "CALCULATE";

  //result
  static String reCalculateTilte = "RE-CALCULATE";
  static String bmiResultTilte = "BMI RESULT";
  static String resultTilte = "Your Result";

  //Other
  static String tilte_1 = "";
  static String tilte_2 = "";
  static String tilte_3 = "";
  static String tilte_4 = "";
  static String tilte_5 = "";
}

class myIcons {
  static var maleIcon = Icons.male;
  static var femaleIcon = Icons.female;
  static var addIcon = Icons.add;
  static var removeIcon = Icons.remove;
  static var alerticon = Icons.not_interested_rounded;
}

class dicorations {
  static var border_1 = BorderRadius.circular(5);
  static var border_2 = BorderRadius.circular(10);
  static var border_3 = BorderRadius.circular(15);
}

class bmiResult {
  static var ageCounter = 25;
  static var weightCounter = 71;
  static double sliderCounter = 173;
  static var bmiRE =
      (weightCounter / ((sliderCounter / 100) * (sliderCounter / 100)));
  static String c_range = "Normal";
  static String myrange = "18.5 - 25 Kg/m2";
  static String textrang = "Normal BMI range:";
  static String weightAbout = "You have a normal body weight.";
  static String godJob = "Good job!";
}
