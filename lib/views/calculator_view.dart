import 'package:flutter/material.dart';
import 'package:flutter_calculator/ui/calculator_buttons.dart';
import 'package:flutter_calculator/view_models/calculator_view_model.dart';
import 'package:provider/provider.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final body = ChangeNotifierProvider(
    create: (_) => CalculatorViewModel(),
    builder: (context, _) {
      final viewModel = context.watch<CalculatorViewModel>();

      final display = Container(
        alignment: Alignment.centerRight,
        width: 400,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          viewModel.result,
          style: const TextStyle(color: Colors.white, fontSize: 64),
        ),
      );

      const buttons = CalculatorButtons();

      void onPressed() {
        viewModel.calculate();
      }

      return Center(
        child: Column(
          children: [
            display,
            buttons,
          ],
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: body,
    );
  }
}
