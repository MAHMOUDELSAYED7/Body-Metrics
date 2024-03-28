import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';
import '../constant/color.dart';
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
    return Container(
      height: ScreenUtil.defaultSize.width / 1.4,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomText(
            "Age",
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.w),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.green,
                borderRadius: BorderRadius.circular(10.w)),
            child: CustomText(
              counter.toString(),
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: MyColors.black,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.w, left: 15.w, right: 15.w),
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
                        size: 40.w,
                        color: MyColors.black,
                      )),
                  FloatingActionButton(
                      heroTag: null,
                      splashColor: MyColors.white.withOpacity(0.2),
                      backgroundColor: MyColors.green,
                      onPressed: decrementMethod,
                      child: Icon(
                        Icons.remove,
                        size: 40.w,
                        color: MyColors.black,
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}

class WeightSlider extends StatefulWidget {
  const WeightSlider({super.key});

  @override
  WeightSliderState createState() => WeightSliderState();
}

class WeightSliderState extends State<WeightSlider> {
  WeightSliderController? _controller;
  double _weight = 80.0;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: _weight, minWeight: 0, interval: 0.05);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.defaultSize.width / 1.4,
      decoration: BoxDecoration(
          color: MyColors.black, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const CustomText(
            "Weight",
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: MyColors.green,
          ),
          SizedBox(height: 8.w),
          Container(
              padding: EdgeInsets.symmetric(vertical: 5.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: MyColors.green,
                  borderRadius: BorderRadius.circular(10.w)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    _weight.toStringAsFixed(1),
                    color: MyColors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 5.w),
                  const CustomText(
                    "kg",
                    color: MyColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              )),
          Expanded(
            child: VerticalWeightSlider(
              controller: _controller!,
              decoration: PointerDecoration(
                width: 130.0.w,
                height: 5.0.w,
                largeColor: MyColors.green,
                mediumColor: MyColors.white,
                smallColor: MyColors.grey,
                gap: 30.0.w,
              ),
              onChanged: (double value) {
                setState(() {
                  _weight = value;
                });
              },
              indicator: Container(
                height: 5.0.w,
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
