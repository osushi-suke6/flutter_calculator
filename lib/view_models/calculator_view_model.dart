import 'package:flutter/material.dart';
import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorViewModel extends ChangeNotifier {
  final CalculatorModel _model = CalculatorModel();

  String get display => _model.display;
  String get subDisplay => _model.subDisplay;

  void buttonPressed(CalculatorButtonType buttonType) {
    _model.onPressed(buttonType);
    notifyListeners();
  }
}
