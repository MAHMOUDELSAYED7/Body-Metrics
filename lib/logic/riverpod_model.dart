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

  onWeightChanged(double value) {
    weight = value;
    notifyListeners();
  }

  onHeightChanged(double value) {
    height = value;
    notifyListeners();
  }

  onGenderSelect(int index) {
    switcherIndex1 = index;
    notifyListeners();
  }
}
