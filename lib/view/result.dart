import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: _buildBackButton(context),
            ),
            SizedBox(height: 25.w),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "Your BMI is",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: MyColors.green,
              ),
            ),
            const Spacer(flex: 2),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MyColors.black,
                shape: BoxShape.circle,
                border: Border.all(
                  color: MyColors.green,
                  width: 8.w,
                ),
              ),
              height: ScreenUtil.defaultSize.width / 1.4,
              child: const CustomText(
                "23",
                color: MyColors.green,
                fontSize: 100,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(flex: 2),
            Container(
              height: ScreenUtil.defaultSize.width / 5,
              width: ScreenUtil.defaultSize.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MyColors.black,
                borderRadius: BorderRadius.circular(15.w),
              ),
              child: const CustomText(
                "Underweight",
                fontSize: 24,
                color: MyColors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: MyColors.black,
                  borderRadius: BorderRadius.circular(10.w)),
              child: const CustomText(
                "Your BMI is 20.7, you are underweight. You can eat a bit more.\n The normal BMI range is 18.5 - 24.9 kg/m2.",
                color: MyColors.green,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            CustomButton(
              title: "Find Out More",
              onPressed: () => Navigator.pop(context),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.green,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.w),
          )),
      child: const CustomText(
        'Back',
        color: MyColors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
