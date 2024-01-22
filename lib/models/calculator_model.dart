import 'dart:math';

import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorModel {
  String _result = '0';

  String get result => _result;

  void calculate() {
    // TODO(sukeroku): implement calulate
    _result = Random().nextInt(10).toString(); // 仮の計算結果を設定
  }

  void buttonPressed(CalculatorButtonType buttonType) {
    // TODO(sukeroku): implement buttonPressed
    return switch (buttonType) {
      CalculatorButtonType.ac => null,
      CalculatorButtonType.percent => null,
      CalculatorButtonType.divide => null,
      CalculatorButtonType.multiply => null,
      CalculatorButtonType.subtract => null,
      CalculatorButtonType.add => null,
      CalculatorButtonType.dot => null,
      CalculatorButtonType.equal => null,
      CalculatorButtonType.zero => null,
      CalculatorButtonType.one => null,
      CalculatorButtonType.two => null,
      CalculatorButtonType.three => null,
      CalculatorButtonType.four => null,
      CalculatorButtonType.five => null,
      CalculatorButtonType.six => null,
      CalculatorButtonType.seven => null,
      CalculatorButtonType.eight => null,
      CalculatorButtonType.nine => null,
      CalculatorButtonType.plusOrMinus => null,
    };
  }
}
