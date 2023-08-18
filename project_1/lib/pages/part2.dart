// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_single_cascade_in_expression_statements, unused_import, avoid_unnecessary_containers, override_on_non_overriding_member, unused_local_variable

import 'package:flutter/material.dart';
import 'package:project_1/component/part3.dart';
import 'package:project_1/pages/part4.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  int male_X = 0;
  int female_x = 0;
  var maleColorFun = myColors.unActiveColor;
  var femaleColorFun = myColors.unActiveColor;
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    //print('width: $screenWidth');
    //print('hight: $screenHight');
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              myTitles.appBarTilte,
              style: TextStyle(
                  fontSize: myFontStyle.midSize,
                  fontWeight: myFontStyle.largBold),
            ),
          ),
          backgroundColor: myColors.appBarcolor),
      backgroundColor:
          myColors.scaffoldColor, ///////////////////////////////////////////
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    maleColorFun = myColors.textColor_W;
                    femaleColorFun = myColors.unActiveColor;
                    male_X = 1;
                  });
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: myColors.cardcolor,
                        borderRadius: dicorations.border_3),
                    height: (MediaQuery.of(context).size.height) / 4.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Icon(
                              myIcons.maleIcon,
                              size: myFontStyle.iconSize,
                              color: maleColorFun,
                            )),
                        Text(myTitles.maleTilte,
                            style: TextStyle(
                                fontSize: myFontStyle.largSize,
                                fontWeight: myFontStyle.largBold,
                                color: maleColorFun)),
                      ],
                    )),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    femaleColorFun = myColors.textColor_W;
                    maleColorFun = myColors.unActiveColor;
                    female_x = 0;
                  });
                },
                child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: myColors.cardcolor,
                        borderRadius: dicorations.border_3),
                    height: (MediaQuery.of(context).size.height) / 4.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Icon(
                              myIcons.femaleIcon,
                              size: myFontStyle.iconSize,
                              color: femaleColorFun,
                            )),
                        Text(myTitles.femaleTilte,
                            style: TextStyle(
                                fontSize: myFontStyle.largSize,
                                fontWeight: myFontStyle.largBold,
                                color: femaleColorFun)),
                      ],
                    )),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: myColors.cardcolor, borderRadius: dicorations.border_3),
            height: screenHight / 4.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  myTitles.heightTilte,
                  style: TextStyle(
                      fontSize: myFontStyle.hightSize,
                      fontWeight: myFontStyle.midBold,
                      color: myColors.textColor_W),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        bmiResult.sliderCounter.toStringAsFixed(0),
                        semanticsLabel: "${bmiResult.sliderCounter}",
                        style: TextStyle(
                            fontSize: myFontStyle.bigLargSize,
                            fontWeight: myFontStyle.bigLargBold,
                            color: myColors.textColor_W),
                      ),
                      Text(
                        myTitles.cmTilte,
                        style: TextStyle(
                            fontSize: myFontStyle.smallSize,
                            color: myColors.textColor_W),
                      ),
                    ],
                  ),
                ),
                Slider(
                  inactiveColor: myColors.unActiveColor,
                  activeColor: myColors.textColor_W,
                  thumbColor: myColors.textColor_R,
                  min: 80,
                  max: 220,
                  value: bmiResult.sliderCounter,
                  onChanged: (value) {
                    setState(() {
                      bmiResult.sliderCounter = value;
                    });
                  },
                )
              ],
            ),
          ), //////////////////////////////////
          Row(
            children: [
              ////// weight
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: myColors.cardcolor,
                        borderRadius: dicorations.border_3),
                    height: screenHight / 4.3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                          ),
                          Text(
                            myTitles.weightTilte,
                            style: TextStyle(
                                fontSize: myFontStyle.smallSize,
                                fontWeight: myFontStyle.largBold,
                                color: myColors.textColor_W),
                          ),
                          Text(
                            "${bmiResult.weightCounter}",
                            style: TextStyle(
                                fontSize: myFontStyle.largSize,
                                fontWeight: myFontStyle.largBold,
                                color: myColors.textColor_W),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: myColors.unActiveColor,
                                onPressed: () {
                                  setState(() {
                                    if (bmiResult.ageCounter != 1) {
                                      bmiResult.weightCounter--;
                                    }
                                  });
                                },
                                child: Icon(
                                  myIcons.removeIcon,
                                  size: myFontStyle.largSize,
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              FloatingActionButton(
                                backgroundColor: myColors.unActiveColor,
                                onPressed: () {
                                  setState(() {
                                    bmiResult.weightCounter++;
                                  });
                                },
                                child: Icon(
                                  myIcons.addIcon,
                                  size: myFontStyle.largSize,
                                ),
                              )
                            ],
                          )
                        ])),
              ),
              ///// hight
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: myColors.cardcolor,
                        borderRadius: dicorations.border_3),
                    height: screenHight / 4.3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                          ),
                          Text(
                            myTitles.ageTilte,
                            style: TextStyle(
                                fontSize: myFontStyle.smallSize,
                                fontWeight: myFontStyle.largBold,
                                color: myColors.textColor_W),
                          ),
                          Text(
                            "${bmiResult.ageCounter}",
                            style: TextStyle(
                                fontSize: myFontStyle.largSize,
                                fontWeight: myFontStyle.largBold,
                                color: myColors.textColor_W),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: myColors.unActiveColor,
                                onPressed: () {
                                  setState(() {
                                    if (bmiResult.ageCounter != 2) {
                                      bmiResult.ageCounter--;
                                    }
                                  });
                                },
                                child: Icon(
                                  myIcons.removeIcon,
                                  size: myFontStyle.largSize,
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              FloatingActionButton(
                                backgroundColor: myColors.unActiveColor,
                                onPressed: () {
                                  setState(() {
                                    if (bmiResult.ageCounter != 110) {
                                      bmiResult.ageCounter++;
                                    }
                                  });
                                },
                                child: Icon(
                                  myIcons.addIcon,
                                  size: myFontStyle.largSize,
                                ),
                              )
                            ],
                          )
                        ])),
              )
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: myColors.textColor_R),
                onPressed: () {
                  if (male_X == 1 || female_x == 1) {
                    Navigator.of(context).pushNamed('page4');
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Choose your gender',
                      titleTextStyle: TextStyle(
                          fontSize: myFontStyle.bigLargSize,
                          fontWeight: myFontStyle.bigLargBold,
                          color: myColors.textColor_R),
                      desc:
                          "You can't perform this operation without choosing a gender",
                      descTextStyle: TextStyle(
                        fontSize: myFontStyle.midSize,
                        fontWeight: myFontStyle.largBold,
                      ),
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  }
                },
                child: Text(
                  myTitles.btnTilte,
                  style: TextStyle(
                      fontSize: myFontStyle.largSize,
                      fontWeight: myFontStyle.largBold),
                )),
          ),
        ],
      ),
    );
  }
}
