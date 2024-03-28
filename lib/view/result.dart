import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
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
            SizedBox(height: 30.w),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                child: const CustomText(
                  'Back',
                  color: MyColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                onTap: () => Navigator.pop(context),
              ),
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
          ],
        ),
      ),
    );
  }
}
