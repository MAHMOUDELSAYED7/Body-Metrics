// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_single_cascade_in_expression_statements, unused_import, avoid_unnecessary_containers, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:project_1/component/part3.dart';
import 'package:project_1/pages/part2.dart';

class myResult extends StatefulWidget {
  const myResult({super.key});

  @override
  State<myResult> createState() => _myResultState();
}

//below 18.5=>you're in the underweight range //between 18.5 and 24.9=>you're in the healthy weight range //between 25 and 29.9 – you're in the overweight range 30 or over – you're in the obese range.
class _myResultState extends State<myResult> {
  @override
  Widget build(BuildContext context) {
    var bmi = (bmiResult.weightCounter /
        ((bmiResult.sliderCounter / 100) * (bmiResult.sliderCounter / 100)));
    var colorAlert = myColors.textColor_G;

    if (bmiResult.ageCounter >= 2 && bmiResult.ageCounter <= 5) {
      if (bmi < 5) {
        bmiResult.c_range = "Underweight";
        bmiResult.textrang = "Underweight BMI range:";
        bmiResult.myrange = "below 5 Kg/m2";
        bmiResult.weightAbout = "you're in the underweight range";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      } else if (bmi >= 5 && bmi <= 8.5) {
        bmiResult.c_range = "Normal";
        bmiResult.textrang = "Normal BMI range:";
        bmiResult.myrange = " 5 - 8.5 Kg/m2";
        bmiResult.weightAbout = "You have a normal body weight.";
        bmiResult.godJob = "Good job!";
        colorAlert = myColors.textColor_G;
      } else if (bmi > 8.5) {
        bmiResult.c_range = "Overweight";
        bmiResult.textrang = "Overweight BMI range:";
        bmiResult.myrange = "higher 8.5 Kg/m2";
        bmiResult.weightAbout = "you're in the overweight range.";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      }
    } else if (bmiResult.ageCounter >= 6 && bmiResult.ageCounter <= 11) {
      if (bmi < 8.5) {
        bmiResult.c_range = "Underweight";
        bmiResult.textrang = "Underweight BMI range:";
        bmiResult.myrange = "below 8.5 Kg/m2";
        bmiResult.weightAbout = "you're in the underweight range";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      } else if (bmi >= 8.5 && bmi <= 13.5) {
        bmiResult.c_range = "Normal";
        bmiResult.textrang = "Normal BMI range:";
        bmiResult.myrange = " 8.5 - 13.5 Kg/m2";
        bmiResult.weightAbout = "You have a normal body weight.";
        bmiResult.godJob = "Good job!";
        colorAlert = myColors.textColor_G;
      } else if (bmi > 13.5) {
        bmiResult.c_range = "Overweight";
        bmiResult.textrang = "Overweight BMI range:";
        bmiResult.myrange = "higher 13.5 Kg/m2";
        bmiResult.weightAbout = "you're in the overweight range.";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      }
    } else if (bmiResult.ageCounter >= 12 && bmiResult.ageCounter <= 19) {
      if (bmi < 13.5) {
        bmiResult.c_range = "Underweight";
        bmiResult.textrang = "Underweight BMI range:";
        bmiResult.myrange = "below 13.5 Kg/m2";
        bmiResult.weightAbout = "you're in the underweight range";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      } else if (bmi >= 13.5 && bmi <= 18.5) {
        bmiResult.c_range = "Normal";
        bmiResult.textrang = "Normal BMI range:";
        bmiResult.myrange = " 13.5 - 18.5 Kg/m2";
        bmiResult.weightAbout = "You have a normal body weight.";
        bmiResult.godJob = "Good job!";
        colorAlert = myColors.textColor_G;
      } else if (bmi > 18.5) {
        bmiResult.c_range = "Overweight";
        bmiResult.textrang = "Overweight BMI range:";
        bmiResult.myrange = "higher 18.5 Kg/m2";
        bmiResult.weightAbout = "you're in the overweight range.";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      }
    } 
     else {
      if (bmi < 18.5) {
        bmiResult.c_range = "Underweight";
        bmiResult.textrang = "Underweight BMI range:";
        bmiResult.myrange = "below 18.5 Kg/m2";
        bmiResult.weightAbout = "you're in the underweight range";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      } else if (bmi > 18.5 && bmi < 25) {
        bmiResult.c_range = "Normal";
        bmiResult.textrang = "Normal BMI range:";
        bmiResult.myrange = "18.5 - 25 Kg/m2";
        bmiResult.weightAbout = "You have a normal body weight.";
        bmiResult.godJob = "Good job!";
        colorAlert = myColors.textColor_G;
      } else if (bmi >= 25 && bmi < 30) {
        bmiResult.c_range = "Overweight";
        bmiResult.textrang = "Overweight BMI range:";
        bmiResult.myrange = "25 - 30 Kg/m2";
        bmiResult.weightAbout = "you're in the overweight range.";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_Y;
      } else if (bmi >= 30) {
        bmiResult.c_range = "Obesity";
        bmiResult.textrang = "Obese BMI range:";
        bmiResult.myrange = "30 or over Kg/m2";
        bmiResult.weightAbout = "you're in the obese range.";
        bmiResult.godJob = "";
        colorAlert = myColors.textColor_R;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              myTitles.bmiResultTilte,
              style: TextStyle(
                  fontSize: myFontStyle.midSize,
                  fontWeight: myFontStyle.largBold),
            ),
          ),
          backgroundColor: myColors.appBarcolor,
        ),
        backgroundColor:
            myColors.scaffoldColor, ///////////////////////////////////////////
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  myTitles.resultTilte,
                  style: TextStyle(
                      fontSize: myFontStyle.iconSize,
                      fontWeight: myFontStyle.bigLargBold,
                      color: myColors.textColor_W),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: myColors.cardcolor,
                    borderRadius: dicorations.border_3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        '${bmiResult.c_range}',
                        style: TextStyle(
                            fontSize: myFontStyle.midSize,
                            fontWeight: myFontStyle.largBold,
                            color: colorAlert),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        (bmiResult.weightCounter /
                                ((bmiResult.sliderCounter / 100) *
                                    (bmiResult.sliderCounter / 100)))
                            .toStringAsFixed(2),
                        semanticsLabel: "${bmiResult.bmiRE}",
                        style: TextStyle(
                            fontSize: myFontStyle.resultSize,
                            fontWeight: myFontStyle.bigLargBold,
                            color: myColors.textColor_W),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "${bmiResult.textrang}",
                        style: TextStyle(
                            fontSize: myFontStyle.midForResultSize,
                            fontWeight: myFontStyle.largBold,
                            color: myColors.textColor_W),
                      ),
                    ),
                    Text(
                      "${bmiResult.myrange}",
                      style: TextStyle(
                          fontSize: myFontStyle.midForResultSize,
                          fontWeight: myFontStyle.largBold,
                          color: myColors.textColor_W),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "${bmiResult.weightAbout}",
                        style: TextStyle(
                            fontSize: myFontStyle.midSize,
                            fontWeight: myFontStyle.midBold,
                            color: myColors.textColor_W),
                      ),
                    ),
                    Text(
                      "${bmiResult.godJob}",
                      style: TextStyle(
                          fontSize: myFontStyle.midSize,
                          fontWeight: myFontStyle.midBold,
                          color: myColors.textColor_W),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: myColors.textColor_R),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('page3');
                    },
                    child: Text(
                      myTitles.reCalculateTilte,
                      style: TextStyle(
                          fontSize: myFontStyle.largSize,
                          fontWeight: myFontStyle.largBold),
                    )),
              )
            ],
          ),
        ));
  }
}
