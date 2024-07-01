import 'package:body_metrics/helper/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';
import '../generated/l10n.dart';
import 'custom_text.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({super.key, required this.onSelect});
  final void Function(int) onSelect;

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  bool isMaleSelected = true;

  void _selectGender(bool isMale) {
    setState(() {
      isMaleSelected = isMale;
    });
    widget.onSelect(isMale ? 0 : 1);
  }

  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);
    return Container(
      height: ScreenSize.width / 6,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        children: [
          _genderCard(tr.male, Icons.male, true, context),
          SizedBox(width: 10.w),
          _genderCard(tr.female, Icons.female, false, context),
        ],
      ),
    );
  }

  Widget _genderCard(String title, IconData iconData, bool isMale, context) {
    bool isSelected =
        (isMale && isMaleSelected) || (!isMale && !isMaleSelected);

    return Expanded(
      child: InkWell(
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        onTap: () {
          _selectGender(isMale);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color: isSelected ? MyColors.green : null,
            borderRadius: BorderRadius.circular(15.r),
          ),
          alignment: Alignment.center,
          height: ScreenSize.width / 6,
          child: Row(
            children: [
              const Spacer(flex: 2),
              Icon(
                iconData,
                size: 40.spMax,
                color: isSelected ? Colors.black : MyColors.green,
              ),
              const Spacer(),
              CustomText(
                title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.black : MyColors.green,
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
