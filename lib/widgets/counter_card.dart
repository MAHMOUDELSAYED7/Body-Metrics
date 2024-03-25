import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import 'custom_text.dart';

class MyCounter extends StatelessWidget {
  const MyCounter(
      {super.key,
      required this.counter,
      required this.title,
      this.incrementMethod,
      this.decrementMethod});
  final int counter;
  final String title;
  final void Function()? incrementMethod;
  final void Function()? decrementMethod;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: MyColors.white, borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: MyColors.grey,
            ),
            CustomText(
              counter.toString(),
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: MyColors.grey,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              FloatingActionButton(
                  splashColor: MyColors.white.withOpacity(0.2),
                  heroTag: null,
                  backgroundColor: MyColors.blue,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  )),
              FloatingActionButton(
                  heroTag: null,
                  splashColor: MyColors.white.withOpacity(0.2),
                  backgroundColor: MyColors.blue,
                  onPressed: () {},
                  child: const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.white,
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}
