import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';
import '../generated/l10n.dart';
import 'custom_text.dart';

class MyCounter extends StatelessWidget {
  const MyCounter(
      {super.key,
      this.counter = 25,
      this.incrementMethod,
      this.decrementMethod});
  final int? counter;
  final void Function()? incrementMethod;
  final void Function()? decrementMethod;
  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);
    return Container(
      height: ScreenSize.height / 3.3,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15.dm)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            tr.age,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.w),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.green,
                borderRadius: BorderRadius.circular(10.dm)),
            child: CustomText(
              counter.toString(),
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: MyColors.black,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                      splashColor: MyColors.white.withOpacity(0.2),
                      heroTag: null,
                      backgroundColor: MyColors.green,
                      onPressed: incrementMethod,
                      child: Icon(
                        Icons.add,
                        size: 40.r,
                        color: Colors.red.shade900,
                      )),
                  FloatingActionButton(
                      heroTag: null,
                      splashColor: MyColors.white.withOpacity(0.2),
                      backgroundColor: MyColors.green,
                      onPressed: decrementMethod,
                      child: Icon(
                        Icons.remove,
                        size: 40.r,
                        color: Colors.red.shade900,
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
