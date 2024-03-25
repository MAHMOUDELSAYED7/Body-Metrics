import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import 'custom_text.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.title,
    this.onTap,
    required this.iconData,
  });
  final String title;
  final void Function()? onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 150.w,
          decoration: BoxDecoration(
              color: MyColors.white, borderRadius: BorderRadius.circular(10.w)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 70.w,
              ),
              CustomText(
                title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
