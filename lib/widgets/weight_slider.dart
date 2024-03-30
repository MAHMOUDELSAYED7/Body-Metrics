import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import '../constant/color.dart';
import '../generated/l10n.dart';
import '../helper/screen_size.dart';
import 'custom_text.dart';

class WeightSlider extends StatefulWidget {
  const WeightSlider(
      {super.key, required this.weight, required this.onChanged});
  final double weight;
  final void Function(double) onChanged;
  @override
  WeightSliderState createState() => WeightSliderState();
}

class WeightSliderState extends State<WeightSlider> {
  WeightSliderController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: widget.weight, minWeight: 0, interval: 0.05);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);
    return Container(
      height: ScreenSize.height / 3.3,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15.dm)),
      child: Column(
        children: [
          CustomText(
            tr.weight,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.h),
          Container(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: MyColors.green,
                  borderRadius: BorderRadius.circular(10.dm)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(flex: 3),
                  CustomText(
                    widget.weight.toStringAsFixed(1),
                    color: MyColors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 5.w),
                  CustomText(
                    tr.kg,
                    color: MyColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(flex: 2),
                ],
              )),
          Expanded(
            child: VerticalWeightSlider(
              controller: _controller!,
              decoration: PointerDecoration(
                width: ScreenSize.width / 3.2,
                height: 5.0.h,
                largeColor: MyColors.green,
                mediumColor: MyColors.white,
                smallColor: MyColors.grey,
                gap: 30.0.w,
              ),
              onChanged: widget.onChanged,
              indicator: Container(
                height: 5.0.h,
                alignment: Alignment.centerLeft,
                color: Colors.red.shade900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
