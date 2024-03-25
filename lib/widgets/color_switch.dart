
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

class ColorModeSwitch extends StatelessWidget {
  const ColorModeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.w,
      width: 101.w,
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(10.w)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.light_mode,
            color: MyColors.blue,
          ),
          Icon(
            Icons.dark_mode,
            color: MyColors.grey,
          )
        ],
      ),
    );
  }
}