import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:bmi_calculator/logic/bmi_provider.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';
import '../generated/l10n.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bmi = ref.watch(bmiProvider);
    final result = bmi.result.toStringAsFixed(1);
    final color = bmi.resultColor;
    final title = bmi.resultTitle;
    final message = bmi.resultMessage;
    final tr = S.of(context);
    return Scaffold(
      backgroundColor: MyColors.silver,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                _buildBackButton(context, ref, color),
              ],
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                CustomText(
                  tr.yourBmiIs,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ],
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
              title:tr.findOutMore,
              onPressed: () => Navigator.pop(context),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, WidgetRef ref, Color? color) {
    final tr = S.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.dm),
          )),
      child: CustomText(
        tr.back,
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
        final tr = S.of(context);
    return Container(
      width: ScreenSize.width,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(10.dm)),
      child: CustomText(
        "${tr.yourBmiIs} $result. $message\n${tr.normalRanage}",
        color: color,
        fontSize: 18,
      ),
    );
  }
}
