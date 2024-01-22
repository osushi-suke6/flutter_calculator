import 'package:flutter/material.dart';
import 'package:flutter_calculator/ui/calculator_button.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';
import 'package:flutter_calculator/view_models/calculator_view_model.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    required this.viewModel,
    super.key,
  });

  final CalculatorViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              buttonType: CalculatorButtonType.ac,
              bgColor: Colors.white10,
              onPressed: () => viewModel.buttonPressed(CalculatorButtonType.ac),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.percent,
              bgColor: Colors.white10,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.percent),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.divide,
              bgColor: Colors.white10,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.divide),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.multiply,
              bgColor: Colors.white10,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.multiply),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              buttonType: CalculatorButtonType.seven,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.seven),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.eight,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.eight),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.nine,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.nine),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.subtract,
              bgColor: Colors.white10,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.subtract),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorButton(
              buttonType: CalculatorButtonType.four,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.four),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.five,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.five),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.six,
              bgColor: Colors.white24,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.six),
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.add,
              bgColor: Colors.white10,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.add),
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
                      buttonType: CalculatorButtonType.one,
                      bgColor: Colors.white24,
                      onPressed: () =>
                          viewModel.buttonPressed(CalculatorButtonType.one),
                    ),
                    CalculatorButton(
                      buttonType: CalculatorButtonType.two,
                      bgColor: Colors.white24,
                      onPressed: () =>
                          viewModel.buttonPressed(CalculatorButtonType.two),
                    ),
                    CalculatorButton(
                      buttonType: CalculatorButtonType.three,
                      bgColor: Colors.white24,
                      onPressed: () =>
                          viewModel.buttonPressed(CalculatorButtonType.three),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(
                      buttonType: CalculatorButtonType.plusOrMinus,
                      bgColor: Colors.white24,
                      onPressed: () => viewModel
                          .buttonPressed(CalculatorButtonType.plusOrMinus),
                    ),
                    CalculatorButton(
                      buttonType: CalculatorButtonType.zero,
                      bgColor: Colors.white24,
                      onPressed: () =>
                          viewModel.buttonPressed(CalculatorButtonType.zero),
                    ),
                    CalculatorButton(
                      buttonType: CalculatorButtonType.dot,
                      bgColor: Colors.white24,
                      onPressed: () =>
                          viewModel.buttonPressed(CalculatorButtonType.dot),
                    ),
                  ],
                ),
              ],
            ),
            CalculatorButton(
              buttonType: CalculatorButtonType.equal,
              bgColor: Colors.orange,
              onPressed: () =>
                  viewModel.buttonPressed(CalculatorButtonType.equal),
            ),
          ],
        ),
      ],
    );
  }
}
