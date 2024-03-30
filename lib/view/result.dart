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
    final result = ref.watch(bmiProvider).result.toStringAsFixed(1);
    final color = ref.watch(bmiProvider).resultColor;
    final title = ref.watch(bmiProvider).resultTitle;
    final message = ref.watch(bmiProvider).resultMessage;
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: _buildBackButton(context, ref),
            ),
            SizedBox(height: 25.w),
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
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MyColors.black,
                shape: BoxShape.circle,
                border: Border.all(
                  color: color!,
                  width: 8.w,
                ),
              ),
              height: ScreenUtil.defaultSize.width / 1.4,
              child: CustomText(
                result,
                color: color,
                fontSize: 72,
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
              child: CustomText(
                title,
                fontSize: 24,
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: MyColors.black,
                  borderRadius: BorderRadius.circular(10.w)),
              child: CustomText(
                "Your BMI is $result, you are $title. $message\nThe normal BMI range is 18.5 - 24.9 kg/m2.",
                color: color,
                fontSize: 18,
              ),
            ),
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

  Widget _buildBackButton(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: ref.watch(bmiProvider).resultColor,
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
