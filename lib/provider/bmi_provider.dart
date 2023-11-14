import 'package:bmi_calculation/const/string_const.dart';
import 'package:flutter/cupertino.dart';

class BmiProvider extends ChangeNotifier {
  void calculateBMI() {
    double meter = StringConst.currentSliderValue / 100;
    double bmi = StringConst.weight / (meter * meter);
    StringConst.result = bmi.toStringAsFixed(2);
  }

  void decrementAge() {
    if (StringConst.age > 0) {
      notifyListeners();
      StringConst.age--;
    }
  }

  void incrementWeight() {
    notifyListeners();

    StringConst.weight++;
  }

  void incrementAge() {
    notifyListeners();
    StringConst.age++;
  }

  void decrementWeight() {
    if (StringConst.weight > 0) {
      notifyListeners();
      StringConst.weight--;
    }
  }
}
