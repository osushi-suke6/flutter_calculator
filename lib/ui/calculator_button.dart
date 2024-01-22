import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({required this.text, super.key, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: text == '=' ? 150 : 75,
      padding: const EdgeInsets.all(4),
      child: OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
    );
  }
}
