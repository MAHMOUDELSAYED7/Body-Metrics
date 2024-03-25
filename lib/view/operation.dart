import 'package:bmi_calculator/constant/color.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/color_switch.dart';
import '../widgets/gender_card.dart';

class OperationScreen extends StatelessWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorModeSwitch(),
            CustomText(
              "Welcome",
              fontSize: 15,
            ),
            CustomText(
              "BMI Calculator",
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            Row(
              children: [
                GenderCard(title: "Male", iconData: Icons.male),
                GenderCard(title: "Female", iconData: Icons.female),
              ],
            )
          ],
        ),
      ),
    );
  }
}
