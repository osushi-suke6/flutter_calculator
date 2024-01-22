import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    required this.text,
    required this.bgColor,
    super.key,
    this.onPressed,
  });

  final Color bgColor;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: text == '=' ? 200 : 100,
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
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
