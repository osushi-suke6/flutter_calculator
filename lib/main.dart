import 'package:flutter/material.dart';
import 'package:flutter_calculator/views/calculator_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App by Flutter',
      home: CalculatorView(),
    );
  }
}
