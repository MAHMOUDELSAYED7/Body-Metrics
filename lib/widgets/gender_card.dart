import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:slider_switch/slider_switch.dart';

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
          height: 60.w,
          decoration: BoxDecoration(
              color: MyColors.black, borderRadius: BorderRadius.circular(10.w)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Icon(
                iconData,
                size: 40.w,
                color: MyColors.green,
              ),
              const Spacer(),
              CustomText(
                title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: MyColors.green,
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderSlider extends StatefulWidget {
  const GenderSlider({super.key});

  @override
  State<GenderSlider> createState() => _GenderSliderState();
}

class _GenderSliderState extends State<GenderSlider> {
  int switcherIndex1 = 0;
  @override
  Widget build(BuildContext context) {
    return SlideSwitcher(
      containerColor: MyColors.black,
      slidersColors: const [MyColors.green],
      containerBorderRadius: 10.w,
      onSelect: (index) => setState(() => switcherIndex1 = index),
      containerHeight: ScreenUtil.defaultSize.width / 5,
      containerWight: ScreenUtil.defaultSize.width,
      children: [
        buildGenderNameAndicon("Male", Icons.male, switcherIndex1),
        buildGenderNameAndicon("Female", Icons.female, switcherIndex1),
      ],
    );
  }

  Widget buildGenderNameAndicon(
      String title, IconData iconData, int switcherIndex1) {
    return Row(
      children: [
        const Spacer(flex: 2),
        Icon(
          iconData,
          size: 40.w,
          color: title == "Male" && switcherIndex1 == 0
              ? MyColors.black
              : switcherIndex1 == 1 && title == "Female"
                  ? MyColors.black
                  : MyColors.green,
        ),
        const Spacer(),
        CustomText(
          title,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: title == "Male" && switcherIndex1 == 0
              ? MyColors.black
              : switcherIndex1 == 1 && title == "Female"
                  ? MyColors.black
                  : MyColors.green,
        ),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
