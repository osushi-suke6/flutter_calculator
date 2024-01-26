import 'package:flutter_calculator/utils/calculator_button_type.dart';
import 'package:test/test.dart';

void main() {
  group('isOperator test', () {
    test('+ should return true', () {
      expect(CalculatorButtonType.add.isOperator, true);
    });

    test('- should return true', () {
      expect(CalculatorButtonType.subtract.isOperator, true);
    });

    test('× should return true', () {
      expect(CalculatorButtonType.multiply.isOperator, true);
    });

    test('÷  should return true', () {
      expect(CalculatorButtonType.divide.isOperator, true);
    });

    test('+/- should return false', () {
      expect(CalculatorButtonType.plusOrMinus.isOperator, false);
    });

    test('AC should return false', () {
      expect(CalculatorButtonType.ac.isOperator, false);
    });

    test('= should return false', () {
      expect(CalculatorButtonType.equal.isOperator, false);
    });

    test('% should return false', () {
      expect(CalculatorButtonType.percent.isOperator, false);
    });

    test('1 should return false', () {
      expect(CalculatorButtonType.one.isOperator, false);
    });

    test('2 should return false', () {
      expect(CalculatorButtonType.two.isOperator, false);
    });

    test('3 should return false', () {
      expect(CalculatorButtonType.three.isOperator, false);
    });

    test('4 should return false', () {
      expect(CalculatorButtonType.four.isOperator, false);
    });

    test('5 should return false', () {
      expect(CalculatorButtonType.five.isOperator, false);
    });

    test('6 should return false', () {
      expect(CalculatorButtonType.six.isOperator, false);
    });

    test('7 should return false', () {
      expect(CalculatorButtonType.seven.isOperator, false);
    });

    test('8 should return false', () {
      expect(CalculatorButtonType.eight.isOperator, false);
    });

    test('9 should return false', () {
      expect(CalculatorButtonType.nine.isOperator, false);
    });

    test('0 should return false', () {
      expect(CalculatorButtonType.zero.isOperator, false);
    });

    test('. should return false', () {
      expect(CalculatorButtonType.dot.isOperator, false);
    });
  });

  group('text test', () {
    test('+ should return +', () {
      expect(CalculatorButtonType.add.text, '+');
    });

    test('- should return -', () {
      expect(CalculatorButtonType.subtract.text, '-');
    });

    test('× should return ×', () {
      expect(CalculatorButtonType.multiply.text, '×');
    });

    test('÷  should return ÷', () {
      expect(CalculatorButtonType.divide.text, '÷');
    });

    test('+/- should return +/-', () {
      expect(CalculatorButtonType.plusOrMinus.text, '+/-');
    });

    test('AC should return AC', () {
      expect(CalculatorButtonType.ac.text, 'AC');
    });

    test('= should return =', () {
      expect(CalculatorButtonType.equal.text, '=');
    });

    test('% should return %', () {
      expect(CalculatorButtonType.percent.text, '%');
    });

    test('1 should return 1', () {
      expect(CalculatorButtonType.one.text, '1');
    });

    test('2 should return 2', () {
      expect(CalculatorButtonType.two.text, '2');
    });

    test('3 should return 3', () {
      expect(CalculatorButtonType.three.text, '3');
    });

    test('4 should return 4', () {
      expect(CalculatorButtonType.four.text, '4');
    });

    test('5 should return 5', () {
      expect(CalculatorButtonType.five.text, '5');
    });

    test('6 should return 6', () {
      expect(CalculatorButtonType.six.text, '6');
    });

    test('7 should return 7', () {
      expect(CalculatorButtonType.seven.text, '7');
    });

    test('8 should return 8', () {
      expect(CalculatorButtonType.eight.text, '8');
    });

    test('9 should return 9', () {
      expect(CalculatorButtonType.nine.text, '9');
    });

    test('0 should return 0', () {
      expect(CalculatorButtonType.zero.text, '0');
    });

    test('. should return .', () {
      expect(CalculatorButtonType.dot.text, '.');
    });
  });
}
