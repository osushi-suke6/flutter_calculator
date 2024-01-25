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
          viewModel.display,
          style: const TextStyle(color: Colors.white, fontSize: 64),
        ),
      );

      final subDisplay = Container(
        alignment: Alignment.centerRight,
        width: 400,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          viewModel.subDisplay,
          style: const TextStyle(color: Colors.white, fontSize: 32),
        ),
      );

      final buttons = CalculatorButtons(viewModel: viewModel);

      return Center(
        child: Column(
          children: [
            subDisplay,
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
