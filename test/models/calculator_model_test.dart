import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';
import 'package:test/test.dart';

void main() {
  group('Numeric input test', () {
    test('Numeric input should update display if no operator is set', () {
      final model = CalculatorModel()..onPressed(CalculatorButtonType.nine);

      expect(model.display, '9');
    });

    test('Numeric input should append to display if it is not "0"', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.one)
        ..onPressed(CalculatorButtonType.two);

      expect(model.display, '12');
    });

    test('Numeric input should replace display if it is "0"', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.zero)
        ..onPressed(CalculatorButtonType.one);

      expect(model.display, '1');
    });

    test('Numeric input should update subDisplay if an operator is set', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.one)
        ..onPressed(CalculatorButtonType.add)
        ..onPressed(CalculatorButtonType.two);

      expect(model.subDisplay, '1+');
      expect(model.display, '2');
    });

    test('Numeric input should reset display if result is displayed', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.one)
        ..onPressed(CalculatorButtonType.add)
        ..onPressed(CalculatorButtonType.two)
        ..onPressed(CalculatorButtonType.equal)
        ..onPressed(CalculatorButtonType.five);

      expect(model.display, '5');
      expect(model.subDisplay, '');
    });
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
      expect(model.subDisplay, '0.2÷0.1=');
    });

    test('The display should show ERROR on division by zero', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.two)
        ..onPressed(CalculatorButtonType.divide)
        ..onPressed(CalculatorButtonType.zero)
        ..onPressed(CalculatorButtonType.equal);

      expect(model.isError, true);
      expect(model.display, 'ERROR');
      expect(model.subDisplay, '2÷0=');
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

  group('Operator input test', () {
    test('+ should set + operator', () {
      final model = CalculatorModel()..onPressed(CalculatorButtonType.add);

      expect(model.subDisplay.endsWith('+'), true);
    });

    test('- should set - operator', () {
      final model = CalculatorModel()..onPressed(CalculatorButtonType.subtract);

      expect(model.subDisplay.endsWith('-'), true);
    });

    test('× should set × operator', () {
      final model = CalculatorModel()..onPressed(CalculatorButtonType.multiply);

      expect(model.subDisplay.endsWith('×'), true);
    });

    test('÷ should set ÷ operator', () {
      final model = CalculatorModel()..onPressed(CalculatorButtonType.divide);

      expect(model.subDisplay.endsWith('÷'), true);
    });

    test('Operator input should replace the previous operator', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.three)
        ..onPressed(CalculatorButtonType.divide)
        ..onPressed(CalculatorButtonType.multiply);

      expect(model.subDisplay.endsWith('×'), true);
    });

    test('Operator input should show result if the expression is set', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.three)
        ..onPressed(CalculatorButtonType.add)
        ..onPressed(CalculatorButtonType.three)
        ..onPressed(CalculatorButtonType.subtract);

      expect(model.display, '6');
      expect(model.subDisplay, '6-');
    });
  });

  group('Equal test', () {
    test('The display should show result if the expression is set', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.two)
        ..onPressed(CalculatorButtonType.multiply)
        ..onPressed(CalculatorButtonType.equal);

      expect(model.display, '4');
      expect(model.subDisplay, '2×2=');
    });

    test('Pressing equal twice should repeat the last operation', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.two)
        ..onPressed(CalculatorButtonType.multiply)
        ..onPressed(CalculatorButtonType.equal)
        ..onPressed(CalculatorButtonType.equal);

      expect(model.display, '8');
      expect(model.subDisplay, '4×2=');
    });
  });

  group('+/- test', () {
    test('+/- should turn the positive number into negative', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.five)
        ..onPressed(CalculatorButtonType.plusOrMinus);

      expect(model.display, '-5');
    });

    test('+/- should turn the negative number into positive', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.five)
        ..onPressed(CalculatorButtonType.plusOrMinus)
        ..onPressed(CalculatorButtonType.plusOrMinus);

      expect(model.display, '5');
    });

    test('+/- should not turn zero into positive or negative', () {
      final model = CalculatorModel()
        ..onPressed(CalculatorButtonType.zero)
        ..onPressed(CalculatorButtonType.plusOrMinus);

      expect(model.display, '0');
    });
  });
}
