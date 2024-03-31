import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant/color.dart';
import '../generated/l10n.dart';

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
  String resultTitle = "";
  String resultMessage = "";
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

  void calculateBmi(BuildContext context) {
    result = weight / ((height / 100) * (height / 100));
    changeResultColor();
    changeResultTitle(context);
    changeResultMessage(context);
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

  void changeResultTitle(BuildContext context) {
    final tr = S.of(context);
    if (result < 18.5 && result > 0) {
      resultTitle = tr.underweight;
    }
    if (result >= 18.5 && result < 24.9) {
      resultTitle = tr.normal;
    }
    if (result >= 24.9 && result < 29.9) {
      resultTitle = tr.overweight;
    }
    if (result >= 29.9) {
      resultTitle = tr.obese;
    }
    notifyListeners();
  }

  void changeResultMessage(BuildContext context) {
    final tr = S.of(context);
    if (result < 18.5 && result > 0) {
      resultMessage = tr.underweightMessage;
    }
    if (result >= 18.5 && result < 24.9) {
      resultMessage = tr.normalMessage;
    }
    if (result >= 24.9 && result < 29.9) {
      resultMessage = tr.overweightMessage;
    }
    if (result >= 29.9) {
      resultMessage = tr.obeseMessage;
    }
    notifyListeners();
  }
}
