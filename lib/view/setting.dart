import 'package:bmi_calculator/logic/riverpod_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import '../generated/l10n.dart';
import '../helper/screen_size.dart';
import '../widgets/custom_text.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                _buildBackButton(context, ref),
              ],
            ),
            SizedBox(height: 40.h),
            _buildChangeLocale(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildChangeLocale(BuildContext context, WidgetRef ref) {
    return Container(
      height: ScreenSize.height * 0.075,
      width: ScreenSize.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyColors.black,
        borderRadius: BorderRadius.circular(10.dm),
      ),
      child: Row(
        children: [
          const Spacer(),
          const CustomText(
            "Language",
            color: MyColors.green,
          ),
          const Spacer(flex: 8),
          DropdownButton(
            iconEnabledColor: MyColors.green,
            style: TextStyle(color: MyColors.green),
            alignment: Alignment.center,
            dropdownColor: MyColors.black,
            icon: const Icon(Icons.arrow_drop_down),
            value: ref.watch(bmiProvider).locale,
            items: const [
              DropdownMenuItem(
                alignment: Alignment.center,
                value: "en",
                child: CustomText("English"),
              ),
              DropdownMenuItem(
                alignment: Alignment.center,
                value: "ar",
                child: CustomText("العربية"),
              ),
            ],
            onChanged: (value) =>
                ref.read(bmiProvider).onLocalizationChanged(value),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildBackButton(
    BuildContext context,
    WidgetRef ref,
  ) {
    final tr = S.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.green,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.dm),
          )),
      child: CustomText(
        tr.back,
        color: MyColors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
