enum CalculatorButtonType {
  ac,
  percent,
  divide,
  multiply,
  subtract,
  add,
  dot,
  equal,
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  plusOrMinus,
}

extension CalculatorButtonTypeExtension on CalculatorButtonType {
  String get text => switch (this) {
        CalculatorButtonType.ac => 'AC',
        CalculatorButtonType.percent => '%',
        CalculatorButtonType.divide => '÷',
        CalculatorButtonType.multiply => '×',
        CalculatorButtonType.subtract => '-',
        CalculatorButtonType.add => '+',
        CalculatorButtonType.dot => '.',
        CalculatorButtonType.equal => '=',
        CalculatorButtonType.zero => '0',
        CalculatorButtonType.one => '1',
        CalculatorButtonType.two => '2',
        CalculatorButtonType.three => '3',
        CalculatorButtonType.four => '4',
        CalculatorButtonType.five => '5',
        CalculatorButtonType.six => '6',
        CalculatorButtonType.seven => '7',
        CalculatorButtonType.eight => '8',
        CalculatorButtonType.nine => '9',
        CalculatorButtonType.plusOrMinus => '+/-',
      };

  bool get isOperator => switch (this) {
        CalculatorButtonType.add => true,
        CalculatorButtonType.subtract => true,
        CalculatorButtonType.multiply => true,
        CalculatorButtonType.divide => true,
        _ => false,
      };
}
