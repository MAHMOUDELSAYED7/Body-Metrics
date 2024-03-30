import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_switcher/slide_switcher.dart';
import '../constant/color.dart';
import '../generated/l10n.dart';
import 'custom_text.dart';

class GenderSlider extends StatelessWidget {
  const GenderSlider(
      {super.key, required this.switcherIndex1, required this.onSelect});
  final int switcherIndex1;
  final void Function(int) onSelect;
  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);
    return SlideSwitcher(
      containerColor: MyColors.black,
      slidersColors: const [MyColors.green],
      containerBorderRadius: 10.dm,
      onSelect: onSelect,
      containerHeight: ScreenSize.width / 6,
      containerWight: ScreenSize.width - 40.w,
      children: [
        buildGenderNameAndicon(tr.male, Icons.male, switcherIndex1, context),
        buildGenderNameAndicon(
            tr.female, Icons.female, switcherIndex1, context),
      ],
    );
  }

  Widget buildGenderNameAndicon(
      String title, IconData iconData, int switcherIndex1, context) {
    final tr = S.of(context);
    return Row(
      children: [
        const Spacer(flex: 2),
        Icon(
          iconData,
          size: 40.spMax,
          color: title == tr.male && switcherIndex1 == 0 
              ? MyColors.black
              : switcherIndex1 == 1 && title == tr.female
                  ? MyColors.black
                  : MyColors.green,
        ),
        const Spacer(),
        CustomText(
          title,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: title == tr.male && switcherIndex1 == 0
              ? MyColors.black
              : switcherIndex1 == 1 && title == tr.female
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
