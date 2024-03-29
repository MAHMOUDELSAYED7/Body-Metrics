import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bmiProvider = ChangeNotifierProvider<BmiController>((ref) {
  return BmiController();
});

class BmiController extends ChangeNotifier {
  int age = 25;
  double weight = 70;
  double height = 170;
  int switcherIndex1 = 0;
  double result = 0;
  // BmiController({
  //   required this.age,
  //   required this.weight,
  //   required this.height,
  // });

  void incrementAge() {
    age++;
    notifyListeners();
  }

  void decrementAge() {
    age--;
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
    notifyListeners();
  }
}
