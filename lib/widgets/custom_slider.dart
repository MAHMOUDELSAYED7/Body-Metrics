import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.defaultSize.width / 2,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const CustomText(
            "Height",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.w),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.green,
                borderRadius: BorderRadius.circular(10.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  _value.toStringAsFixed(1),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: MyColors.black,
                ),
                const CustomText(
                  "cm",
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          const Spacer(),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 10.w,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.w),
            ),
            child: Slider(
              inactiveColor: MyColors.silver,
              activeColor: MyColors.green,
              min: 110,
              max: 190,
              value: _value,
              onChanged: (value) {
                _value = value;
                setState(() {});
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
