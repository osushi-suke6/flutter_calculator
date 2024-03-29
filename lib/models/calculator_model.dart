import 'package:decimal/decimal.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorModel {
  String _result = '0';
  CalculatorButtonType? _operatorType;
  String _operand1 = '';
  String _operand2 = '';
  bool _isError = false;

  CalculatorButtonType _lastPressed = CalculatorButtonType.ac;

  bool get _isEqualed => _lastPressed == CalculatorButtonType.equal;
  String get _operator => _operatorType?.text ?? '';
  String get _equal => _isEqualed ? '=' : '';
  String get display => _isError ? 'ERROR' : _result;
  String get subDisplay =>
      _operator.isEmpty ? '' : _operand1 + _operator + _operand2 + _equal;
  bool get isError => _isError;

  void onPressed(CalculatorButtonType buttonType) {
    _handlePressed(buttonType);
    _lastPressed = buttonType;
  }

  void _handlePressed(CalculatorButtonType buttonType) {
    return switch (buttonType) {
      CalculatorButtonType.ac => _onAc(),
      CalculatorButtonType.percent => _onPercent(),
      CalculatorButtonType.divide => _onOperator(buttonType),
      CalculatorButtonType.multiply => _onOperator(buttonType),
      CalculatorButtonType.subtract => _onOperator(buttonType),
      CalculatorButtonType.add => _onOperator(buttonType),
      CalculatorButtonType.dot => _onDot(),
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
      CalculatorButtonType.plusOrMinus => _onPlusOrMinus(),
    };
  }

  bool _isUpdateOperand() {
    return _lastPressed.isOperator ||
        _lastPressed == CalculatorButtonType.equal ||
        _result == '0';
  }

  void _onAc() {
    _isError = false;
    _result = '0';
    _operand1 = '';
    _operatorType = null;
    _operand2 = '';
  }

  void _onNumber(CalculatorButtonType buttonType) {
    final number = buttonType.text;

    if (_lastPressed == CalculatorButtonType.equal) _onAc();

    if (_isUpdateOperand()) {
      _result = number;
    } else {
      _result += number;
    }
  }

  void _onOperator(CalculatorButtonType buttonType) {
    if (_lastPressed.isOperator) {
      _operatorType = buttonType;
      return;
    }

    if (_operand1.isEmpty) {
      _operand1 = _result;
    } else {
      _onEqual();
      _operand1 = _result;
      _operand2 = '';
    }

    _operatorType = buttonType;
  }

  void _onDot() {
    if (_result.contains('.')) return;

    _result += '.';
  }

  void _onPercent() {}

  void _onPlusOrMinus() {
    final result = -Decimal.parse(_result);
    _result = result.toString();
  }

  void _onEqual() {
    if (_operand1.isEmpty && _operand2.isEmpty) return;

    if (_lastPressed == CalculatorButtonType.equal) {
      _operand1 = _result;
    } else {
      _operand2 = _result;
    }

    final op1 = Decimal.parse(_operand1);
    final op2 = Decimal.parse(_operand2);

    _result = switch (_operatorType) {
      CalculatorButtonType.add => (op1 + op2).toString(),
      CalculatorButtonType.subtract => (op1 - op2).toString(),
      CalculatorButtonType.multiply => (op1 * op2).toString(),
      CalculatorButtonType.divide => _divide(op1, op2),
      _ => ''
    };
  }

  String _divide(Decimal op1, Decimal op2) {
    if (op2 == Decimal.zero) {
      _isError = true;
      return '';
    }

    return (op1 / op2).toString();
  }
}
