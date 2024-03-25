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
      height: 170.w,
      width: double.infinity,
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.w,
          ),
          const CustomText(
            "Height",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: MyColors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                _value.toStringAsFixed(1),
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: MyColors.blue,
              ),
              SizedBox(
                height: 27.w,
                child: const CustomText(
                  "cm",
                  color: MyColors.grey,
                ),
              ),
            ],
          ),
          Slider(
            inactiveColor: MyColors.silver,
            activeColor: MyColors.blue,
            min: 110,
            max: 190,
            value: _value,
            onChanged: (value) {
              _value = value;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
