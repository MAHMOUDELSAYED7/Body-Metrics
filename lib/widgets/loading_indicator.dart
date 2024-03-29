import 'package:bmi_calculator/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyLoadingIndicator extends StatelessWidget {
  const MyLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: MyColors.green,
        strokeCap: StrokeCap.round,
        strokeWidth: 10.w,
        strokeAlign: 3.w,
      ),
    );
  }
}
