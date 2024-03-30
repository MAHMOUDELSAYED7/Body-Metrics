import 'package:bmi_calculator/constant/color.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/string.dart';
import '../logic/riverpod_model.dart';
import '../widgets/counter_card.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_slider.dart';
import '../widgets/gender_card.dart';

class OperationScreen extends ConsumerWidget {
  const OperationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "Welcome",
                fontSize: 15,
                color: MyColors.green,
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "BMI Calculator",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: MyColors.green,
              ),
            ),
            const Spacer(),
            _buildGenderCard(ref),
            SizedBox(height: 15.w),
            _buildSliderCard(ref),
            SizedBox(height: 15.w),
            _buildCounterCard(ref),
            const Spacer(flex: 2),
            CustomButton(
              title: "Lets Go",
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.resultRoute);
                ref.read(bmiProvider).calculateBmi();
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderCard(WidgetRef ref) {
    return GenderSlider(
      switcherIndex1: ref.watch(bmiProvider).switcherIndex1,
      onSelect: ref.read(bmiProvider).onGenderSelect,
    );
  }

  Widget _buildSliderCard(WidgetRef ref) {
    return MySlider(
      value: ref.watch(bmiProvider).height,
      onChanged: ref.read(bmiProvider).onHeightChanged,
    );
  }

  Widget _buildCounterCard(WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: MyCounter(
            counter: ref.watch(bmiProvider).age,
            incrementMethod: ref.read(bmiProvider).incrementAge,
            decrementMethod: ref.read(bmiProvider).decrementAge,
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: WeightSlider(
            weight: ref.watch(bmiProvider).weight,
            onChanged: ref.read(bmiProvider).onWeightChanged,
          ),
        ),
      ],
    );
  }
}
