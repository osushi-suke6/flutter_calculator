import 'package:flutter/material.dart';
import 'package:flutter_calculator/view_models/calculator_view_model.dart';
import 'package:provider/provider.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final body = ChangeNotifierProvider(
    create: (_) => CalculatorViewModel(),
    builder: (context, _) {
      final viewModel = context.watch<CalculatorViewModel>();

      void onPressed() {
        viewModel.calculate();
      }

      return Center(
        child: Column(
          children: [
            Text(viewModel.result),
            OutlinedButton(
              onPressed: onPressed,
              child: const Text('calculate!'),
            ),
          ],
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: body,
    );
  }
}
