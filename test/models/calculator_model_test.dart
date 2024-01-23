import 'package:flutter_calculator/models/calculator_model.dart';
import 'package:test/test.dart';

void main() {
  group('Testing CalculatorModel', () {
    final model = CalculatorModel();

    test('Test calculate method', () {
      model.calculate();
      expect(model.result.isNotEmpty, true);
    });
  });
}
