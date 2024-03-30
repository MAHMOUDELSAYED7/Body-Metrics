import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:bmi_calculator/logic/riverpod_model.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmi = ref.watch(bmiProvider);
    final result = bmi.result.toStringAsFixed(1);
    final color = bmi.resultColor;
    final title = bmi.resultTitle;
    final message = bmi.resultMessage;
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: _buildBackButton(context, ref, color),
            ),
            SizedBox(height: 25.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "Your BMI is",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            const Spacer(flex: 2),
            _buildResultValue(context, ref, result, color),
            const Spacer(flex: 2),
            _buildResultTitle(context, ref, title, color),
            const Spacer(),
            _buildResultMessage(context, ref, result, title, message, color),
            const Spacer(),
            CustomButton(
              color: color,
              title: "Find Out More",
              onPressed: () => Navigator.pop(context),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, WidgetRef ref, Color? color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.dm),
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

  Widget _buildResultValue(
      BuildContext context, WidgetRef ref, String result, Color? color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyColors.black,
        shape: BoxShape.circle,
        border: Border.all(
          color: color!,
          width: 8.w,
        ),
      ),
      height: ScreenSize.width / 2,
      child: CustomText(
        result,
        color: color,
        fontSize: 72,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildResultTitle(
      BuildContext context, WidgetRef ref, String title, Color? color) {
    return Container(
      height: ScreenSize.height * 0.075,
      width: ScreenSize.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyColors.black,
        borderRadius: BorderRadius.circular(10.dm),
      ),
      child: CustomText(
        title,
        fontSize: 24,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildResultMessage(BuildContext context, WidgetRef ref, String result,
      String title, String message, Color? color) {
    return Container(
      width: ScreenSize.width,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(10.dm)),
      child: CustomText(
        "Your BMI is $result, you are $title. $message\nThe normal BMI range is 18.5 - 24.9 kg/m2.",
        color: color,
        fontSize: 18,
      ),
    );
  }
}
