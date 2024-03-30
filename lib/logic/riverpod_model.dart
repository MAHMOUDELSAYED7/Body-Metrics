import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant/color.dart';

final bmiProvider = ChangeNotifierProvider<BmiController>((ref) {
  return BmiController();
});

class BmiController extends ChangeNotifier {
  int age = 25;
  double weight = 70;
  double height = 170;
  int switcherIndex1 = 0;
  double result = 0;
  Color? resultColor = MyColors.green;
  String resultTitle = "Normal";
  String resultMessage = "You have a normal body weight. bv n Good job!";

  void incrementAge() {
    if (age < 100) {
      age++;
    }
    notifyListeners();
  }

  void decrementAge() {
    if (age > 19) {
      age--;
    }
    notifyListeners();
  }

  void onWeightChanged(double value) {
    weight = value;
    notifyListeners();
  }

  void onHeightChanged(double value) {
    height = value;
    notifyListeners();
  }

  void onGenderSelect(int index) {
    switcherIndex1 = index;
    notifyListeners();
  }

  void calculateBmi() {
    result = weight / ((height / 100) * (height / 100));
    changeResultColor();
    changeResultTitle();
    changeResultMessage();
    notifyListeners();
  }

  void changeResultColor() {
    if (result < 18.5 && result > 0) {
      resultColor = Colors.yellow;
    }
    if (result >= 18.5 && result < 24.9) {
      resultColor = MyColors.green;
    }
    if (result >= 24.9 && result < 29.9) {
      resultColor = Colors.yellow;
    }
    if (result >= 29.9) {
      resultColor = Colors.red;
    }
  }

  void changeResultTitle() {
    if (result < 18.5 && result > 0) {
      resultTitle = "Underweight";
    }
    if (result >= 18.5 && result < 24.9) {
      resultTitle = "Normal";
    }
    if (result >= 24.9 && result < 29.9) {
      resultTitle = "Overweight";
    }
    if (result >= 29.9) {
      resultTitle = "Obese";
    }
    notifyListeners();
  }

  void changeResultMessage() {
    if (result < 18.5 && result > 0) {
      resultMessage =
          "You have a lower than normal body weight. Try to exercise more.";
    }
    if (result >= 18.5 && result < 24.9) {
      resultMessage = "You have a normal body weight. Good job!";
    }
    if (result >= 24.9 && result < 29.9) {
      resultMessage =
          "You have a higher than normal body weight. Try to exercise more.";
    }
    if (result >= 29.9) {
      resultMessage =
          "You have a higher than normal body weight. Try to exercise more.";
    }
    notifyListeners();
  }
}
