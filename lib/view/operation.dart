import 'package:bmi_calculator/constant/color.dart';
import 'package:bmi_calculator/widgets/custom_button';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/string.dart';
import '../widgets/counter_card.dart';
import '../widgets/custom_slider.dart';
import '../widgets/gender_card.dart';

class OperationScreen extends StatelessWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 70.w),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "Welcome",
                fontSize: 15,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "BMI Calculator",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.w),
            Row(
              children: [
                GenderCard(title: "Male", iconData: Icons.male),
                SizedBox(width: 15.w),
                GenderCard(title: "Female", iconData: Icons.female),
              ],
            ),
            SizedBox(height: 20.w),
            const MySlider(),
            SizedBox(height: 20.w),
            Row(
              children: [
                MyCounter(counter: 10, title: "Weight"),
                SizedBox(width: 15.w),
                MyCounter(counter: 10, title: "Age"),
              ],
            ),
            SizedBox(height: 50.w),
            CustomButton(
              title: "Calculate",
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.resultRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
