import 'package:bmi_calculator/constant/color.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/string.dart';
import '../widgets/counter_card.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_slider.dart';
import '../widgets/gender_card.dart';

class OperationScreen extends StatelessWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
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
                color: MyColors.green,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "BMI Calculator",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: MyColors.green,
              ),
            ),
            SizedBox(height: 20.w),
            GenderSlider(),
            // Row(
            //   children: [
            //     const GenderCard(title: "Male", iconData: Icons.male),
            //     SizedBox(width: 15.w),
            //     const GenderCard(title: "Female", iconData: Icons.female),
            //   ],
            // ),
            SizedBox(height: 15.w),
            const MySlider(),
            SizedBox(height: 15.w),
            Row(
              children: [
                const Expanded(
                  child: MyCounter(),
                ),
                SizedBox(width: 15.w),
                const Expanded(
                  child: WeightSlider(),
                ),
              ],
            ),
            SizedBox(height: 15.w),
            CustomButton(
              title: "Calculate",
              onPressed: () =>
                  Navigator.pushNamed(context, MyRoutes.resultRoute),
            )
          ],
        ),
      ),
    );
  }
}
