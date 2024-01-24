import 'package:decimal/decimal.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorModel {
  String _result = '0';
  CalculatorButtonType? _operatorType;
  String _operand1 = '0';
  String _operand2 = '';
  bool _isEqualed = false;

  String get _operator => _operatorType?.text ?? '';
  String get _equal => _isEqualed ? '=' : '';
  String get display => _result;
  String get subDisplay =>
      _operator.isEmpty ? '' : _operand1 + _operator + _operand2 + _equal;

  void onPressed(CalculatorButtonType buttonType) {
    // TODO(sukeroku): implement buttonPressed
    return switch (buttonType) {
      CalculatorButtonType.ac => _onAc(),
      CalculatorButtonType.percent => null,
      CalculatorButtonType.divide => _onOperator(buttonType),
      CalculatorButtonType.multiply => _onOperator(buttonType),
      CalculatorButtonType.subtract => _onOperator(buttonType),
      CalculatorButtonType.add => _onOperator(buttonType),
      CalculatorButtonType.dot => null,
      CalculatorButtonType.equal => _onEqual(),
      CalculatorButtonType.zero => _onNumber(buttonType),
      CalculatorButtonType.one => _onNumber(buttonType),
      CalculatorButtonType.two => _onNumber(buttonType),
      CalculatorButtonType.three => _onNumber(buttonType),
      CalculatorButtonType.four => _onNumber(buttonType),
      CalculatorButtonType.five => _onNumber(buttonType),
      CalculatorButtonType.six => _onNumber(buttonType),
      CalculatorButtonType.seven => _onNumber(buttonType),
      CalculatorButtonType.eight => _onNumber(buttonType),
      CalculatorButtonType.nine => _onNumber(buttonType),
      CalculatorButtonType.plusOrMinus => null,
    };
  }

  void _onAc() {
    _result = '0';
    _operand1 = '0';
    _operatorType = null;
    _operand2 = '';
    _isEqualed = false;
  }

  void _onNumber(CalculatorButtonType buttonType) {
    final number = buttonType.text;

    if (_isEqualed) {
      _onAc();
      _operand1 = number;
      _result = _operand1;
    } else if (_operatorType != null) {
      _operand2 += number;
    } else if (_operand1 == '0') {
      _operand1 = number;
      _result = _operand1;
    } else {
      _operand1 += number;
      _result = _operand1;
    }
  }

  void _onOperator(CalculatorButtonType buttonType) {
    _isEqualed = false;

    _operatorType = buttonType;
  }

  void _onEqual() {
    _isEqualed = true;
    _operand1 = _result;

    final op1 = Decimal.parse(_result);
    final op2 = Decimal.parse(_operand2);

    _result = switch (_operatorType) {
      CalculatorButtonType.add => (op1 + op2).toString(),
      CalculatorButtonType.subtract => (op1 - op2).toString(),
      CalculatorButtonType.multiply => (op1 * op2).toString(),
      CalculatorButtonType.divide => (op1 / op2).toString(),
      _ => ''
    };
  }
}
