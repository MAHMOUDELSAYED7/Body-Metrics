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
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          alignment: Alignment.center,
          height: 50.w,
          decoration: BoxDecoration(
              color: MyColors.white, borderRadius: BorderRadius.circular(10.w)),
          child: Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              Icon(
                iconData,
                size: 25.w,
              ),
              const Spacer(),
              CustomText(
                title,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
