import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_switcher/slide_switcher.dart';
import '../constant/color.dart';
import 'custom_text.dart';
class GenderSlider extends StatelessWidget {
  const GenderSlider(
      {super.key, required this.switcherIndex1, required this.onSelect});
  final int switcherIndex1;
  final void Function(int) onSelect;
  @override
  Widget build(BuildContext context) {
    return SlideSwitcher(
      containerColor: MyColors.black,
      slidersColors: const [MyColors.green],
      containerBorderRadius: 10.w,
      onSelect: onSelect,
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
