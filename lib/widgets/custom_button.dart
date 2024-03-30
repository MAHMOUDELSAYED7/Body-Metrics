import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.title,
      this.onPressed,
      this.color,
      this.height,
      this.width,
      this.fontSize,
      this.widget,
      this.borderRadius});
  final String? title;
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final double? fontSize;
  final Widget? widget;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: MyColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8)),
            backgroundColor: color ?? MyColors.green,
            fixedSize: Size(width ?? double.maxFinite, height ?? 54.h)),
        onPressed: onPressed,
        child: widget ??
            CustomText(
              title ?? "",
              color: MyColors.black,
              fontSize: fontSize ?? 18,
              fontWeight: FontWeight.w600,
            ));
  }
}
