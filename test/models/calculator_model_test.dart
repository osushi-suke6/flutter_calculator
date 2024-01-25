import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';
import 'package:test/test.dart';

void main() {
  group('Test CalculatorModel', () {
    final calculator = CalculatorModel();

    test('Numeric input test', () {
      calculator
        ..onPressed(CalculatorButtonType.ac)
        ..onPressed(CalculatorButtonType.one)
        ..onPressed(CalculatorButtonType.two)
        ..onPressed(CalculatorButtonType.three)
        ..onPressed(CalculatorButtonType.four)
        ..onPressed(CalculatorButtonType.five)
        ..onPressed(CalculatorButtonType.six)
        ..onPressed(CalculatorButtonType.seven)
        ..onPressed(CalculatorButtonType.eight)
        ..onPressed(CalculatorButtonType.nine)
        ..onPressed(CalculatorButtonType.zero);

      expect(calculator.display, '1234567890');
      expect(calculator.subDisplay, '');
    });

    group('Addition test', () {
      test('5 + 8 = 13', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.five)
          ..onPressed(CalculatorButtonType.add)
          ..onPressed(CalculatorButtonType.eight)
          ..onPressed(CalculatorButtonType.equal);

        expect(calculator.display, '13');
        expect(calculator.subDisplay, '5+8=');
      });

      test('0.1 + 0.2 = 0.3', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.add)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.equal);

        expect(calculator.display, '0.3');
        expect(calculator.subDisplay, '0.1+0.2=');
      });
    });

    group('Subtraction test', () {
      test('0.2 - 0.1 = 0.1', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.subtract)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(calculator.display, '0.1');
        expect(calculator.subDisplay, '0.2-0.1=');
      });
    });

    group('Multiplication test', () {
      test('0.2 * 0.1 = 0.02', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.multiply)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(calculator.display, '0.02');
        expect(calculator.subDisplay, '0.2×0.1=');
      });
    });

    group('Division test', () {
      test('0.2 / 0.1 = 2', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(calculator.display, '2');
        expect(calculator.subDisplay, '0.2/0.1=');
      });
    });

    group('AC test', () {
      test('The display should show 0 if the AC button is pressed: case1', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.ac);

        expect(calculator.display, '0');
        expect(calculator.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case2', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.multiply)
          ..onPressed(CalculatorButtonType.ac);

        expect(calculator.display, '0');
        expect(calculator.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case3', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.three)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.four)
          ..onPressed(CalculatorButtonType.ac);

        expect(calculator.display, '0');
        expect(calculator.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case4', () {
        calculator
          ..onPressed(CalculatorButtonType.ac)
          ..onPressed(CalculatorButtonType.three)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.ac);

        expect(calculator.display, '0');
        expect(calculator.isError, false);
      });
    });

    group('Equal test', () {
      test('description', () {});
    });
  });
}
