import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color.dart';
import '../constant/string.dart';
import '../generated/l10n.dart';
import '../logic/font_family_provider.dart';
import '../logic/localization_provider.dart';
import '../widgets/custom_text.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tr = S.of(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                _buildBackButton(context, tr),
              ],
            ),
            SizedBox(height: 40.h),
            _buildDropdownContainer(
              context,
              label: tr.changeLanguage,
              value: ref.watch(localeProvider).lang,
              items:const [
                DropdownMenuItem<String>(
                  value: "en",
                  child: CustomText("English"),
                ),
                DropdownMenuItem<String>(
                  value: "ar",
                  child: CustomText("العربية"),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  ref.read(localeProvider).onLocalizationChanged(value);
                }
              },
            ),
            SizedBox(height: 20.h),
            _buildDropdownContainer(
              context,
              label: tr.changeFontFamily,
              value: ref.watch(fontProvider).fontFamily,
              items:const [
                DropdownMenuItem<String>(
                  value: MyFontFamily.poppins,
                  child: CustomText(MyFontFamily.poppins),
                ),
                DropdownMenuItem<String>(
                  value: MyFontFamily.germania,
                  child: CustomText(MyFontFamily.germania),
                ),
                DropdownMenuItem<String>(
                  value: MyFontFamily.metalMania,
                  child: CustomText(MyFontFamily.metalMania),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  ref.read(fontProvider).onFontFamilyChanged(value);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownContainer(
    BuildContext context, {
    required String label,
    required String value,
    required List<DropdownMenuItem<String>> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyColors.black,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          const Spacer(),
          CustomText(
            label,
            color: MyColors.green,
          ),
          const Spacer(flex: 8),
          DropdownButton<String>(
            enableFeedback: true,
            borderRadius: BorderRadius.circular(12.r),
            iconEnabledColor: MyColors.green,
            style: const TextStyle(color: MyColors.green),
            alignment: Alignment.center,
            dropdownColor: MyColors.black,
            icon: const Icon(Icons.arrow_drop_down),
            value: value,
            items: items,
            onChanged: onChanged,
            itemHeight: 50.0,
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, S tr) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.green,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
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
