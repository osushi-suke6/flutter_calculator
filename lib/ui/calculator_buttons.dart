import 'package:flutter/material.dart';
import 'package:flutter_calculator/ui/calculator_button.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              text: 'AC',
              bgColor: Colors.white10,
            ),
            CalculatorButton(
              text: '%',
              bgColor: Colors.white10,
            ),
            CalculatorButton(
              text: '÷',
              bgColor: Colors.white10,
            ),
            CalculatorButton(
              text: '×',
              bgColor: Colors.white10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              text: '7',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '8',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '9',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '-',
              bgColor: Colors.white10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              text: '4',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '5',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '6',
              bgColor: Colors.white24,
            ),
            CalculatorButton(
              text: '+',
              bgColor: Colors.white10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CalculatorButton(
                      text: '1',
                      bgColor: Colors.white24,
                    ),
                    CalculatorButton(
                      text: '2',
                      bgColor: Colors.white24,
                    ),
                    CalculatorButton(
                      text: '3',
                      bgColor: Colors.white24,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                      text: '+/-',
                      bgColor: Colors.white24,
                    ),
                    CalculatorButton(
                      text: '0',
                      bgColor: Colors.white24,
                    ),
                    CalculatorButton(
                      text: '.',
                      bgColor: Colors.white24,
                    ),
                  ],
                ),
              ],
            ),
            CalculatorButton(
              text: '=',
              bgColor: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }
}
