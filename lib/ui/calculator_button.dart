import 'package:flutter/material.dart';
import 'package:flutter_calculator/utils/calculator_button_type.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    required this.bgColor,
    required this.buttonType,
    super.key,
    this.onPressed,
  });

  final Color bgColor;

  final CalculatorButtonType buttonType;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: buttonType == CalculatorButtonType.equal ? 200 : 100,
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        child: Text(
          buttonType.text,
          style: const TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
    );
  }
}
