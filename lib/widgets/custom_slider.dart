import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';
import '../helper/screen_size.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key, required this.value, this.onChanged});
  final double value;
  final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height / 4.6,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15.dm)),
      child: Column(
        children: [
          const CustomText(
            "Height",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.green,
                borderRadius: BorderRadius.circular(10.dm)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(flex: 5),
                CustomText(
                  value.toStringAsFixed(1),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                ),
                const CustomText(
                  "cm",
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
          const Spacer(),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 10.w,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.dm),
            ),
            child: Slider(
              inactiveColor: MyColors.silver,
              activeColor: MyColors.green,
              min: 110,
              max: 190,
              value: value,
              onChanged: onChanged,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
