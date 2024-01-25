import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';
import 'package:test/test.dart';

void main() {
  group('Test CalculatorModel', () {
    test('Numeric input test', () {
      final model = CalculatorModel()
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

      expect(model.display, '1234567890');
      expect(model.subDisplay, '');
    });

    group('Addition test', () {
      test('5 + 8 = 13', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.five)
          ..onPressed(CalculatorButtonType.add)
          ..onPressed(CalculatorButtonType.eight)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.display, '13');
        expect(model.subDisplay, '5+8=');
      });

      test('0.1 + 0.2 = 0.3', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.add)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.display, '0.3');
        expect(model.subDisplay, '0.1+0.2=');
      });
    });

    group('Subtraction test', () {
      test('0.2 - 0.1 = 0.1', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.subtract)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.display, '0.1');
        expect(model.subDisplay, '0.2-0.1=');
      });
    });

    group('Multiplication test', () {
      test('0.2 * 0.1 = 0.02', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.multiply)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.display, '0.02');
        expect(model.subDisplay, '0.2×0.1=');
      });
    });

    group('Division test', () {
      test('0.2 / 0.1 = 2', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.display, '2');
        expect(model.subDisplay, '0.2/0.1=');
      });

      test('The display should show ERROR on Division by zero', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.dot)
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.equal);

        expect(model.isError, true);
        expect(model.display, 'ERROR');
        expect(model.subDisplay, '0.2/0=');
      });
    });

    group('AC test', () {
      test('The display should show 0 if the AC button is pressed: case1', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.two)
          ..onPressed(CalculatorButtonType.ac);

        expect(model.display, '0');
        expect(model.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case2', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.one)
          ..onPressed(CalculatorButtonType.multiply)
          ..onPressed(CalculatorButtonType.ac);

        expect(model.display, '0');
        expect(model.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case3', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.three)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.four)
          ..onPressed(CalculatorButtonType.ac);

        expect(model.display, '0');
        expect(model.isError, false);
      });

      test('The display should show 0 if the AC button is pressed: case4', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.three)
          ..onPressed(CalculatorButtonType.divide)
          ..onPressed(CalculatorButtonType.zero)
          ..onPressed(CalculatorButtonType.ac);

        expect(model.display, '0');
        expect(model.isError, false);
      });
    });

    group('Equal test', () {
      test('description', () {});
    });

    group('Operator buttons test', () {
      test('+ should set + operator', () {
        final model = CalculatorModel()..onPressed(CalculatorButtonType.add);
        expect(model.subDisplay.endsWith('+'), true);
      });

      test('- should set - operator', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.subtract);
        expect(model.subDisplay.endsWith('-'), true);
      });

      test('× should set × operator', () {
        final model = CalculatorModel()
          ..onPressed(CalculatorButtonType.multiply);
        expect(model.subDisplay.endsWith('×'), true);
      });

      test('÷ should set ÷ operator', () {
        final model = CalculatorModel()..onPressed(CalculatorButtonType.divide);
        expect(model.subDisplay.endsWith('÷'), true);
      });
    });
  });
}
