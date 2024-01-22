import 'dart:math';

class CalculatorModel {
  String _result = '0';

  String get result => _result;

  void calculate() {
    // TODO(sukeroku): implement calulate
    _result = Random().nextInt(10).toString(); // 仮の計算結果を設定
  }

  void buttonPressed(String button) {
    switch (button) {
      case '+':
        break;
      default:
    }
  }
}
