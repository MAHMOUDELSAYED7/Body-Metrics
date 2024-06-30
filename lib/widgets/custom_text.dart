import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final bool needUnderline;
  final TextDirection? textDirection;

  const CustomText(
    this.text, {
    super.key,
    this.fontSize = 14,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.needUnderline = false,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      style: TextStyle(
        fontSize: fontSize.spMin,
        fontWeight: fontWeight,
        color: color,
        decorationColor: color,
        decoration: needUnderline ? TextDecoration.underline : null,
      ),
    );
  }
}
