import 'package:bmi_calculator/constant/color.dart';
import 'package:flutter/material.dart';


class MyLoadingIndicator extends StatelessWidget {
  const MyLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: MyColors.green,
        strokeCap: StrokeCap.round,
        strokeWidth: 10,
        strokeAlign: 3,
      ),
    );
  }
}
