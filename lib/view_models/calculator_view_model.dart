import 'package:flutter/material.dart';
import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorViewModel extends ChangeNotifier {
  final CalculatorModel _model = CalculatorModel();

  String get result => _model.result;

  void calculate() {
    _model.calculate();
    notifyListeners();
  }

  void buttonPressed(CalculatorButtonType buttonType) {
    _model.buttonPressed(buttonType);
    notifyListeners();
  }
}
