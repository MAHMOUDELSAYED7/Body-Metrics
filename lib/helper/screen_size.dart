import 'package:flutter/material.dart';

class ScreenSize {
  static late double width;
  static late double height;
  static late double defaultSize;
  static late Orientation orientation;

  static void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = 
        orientation == Orientation.landscape 
        ? width * .024 
        : height * .024;
  }

  // static double sizeFor(double size) {
  //   return height * size / 600;
  // }

  // static double heightFor(double height) {
  //   return height * height / 100;
  // }

  // static double widthFor(double width) {
  //   return width * width / 100;
  // }
}

// extension ResponsiveExtensions on num {
//   double get w => ScreenSize.width * this / 100;
//   double get h => ScreenSize.height * this / 100;
// }


