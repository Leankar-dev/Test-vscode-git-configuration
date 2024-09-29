import 'package:calculator_001/app/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: CalculatorButton(
          text: 'Botao aaaaaaaaaaaa',
          fillColor: 5,
          callback: () {},
        ),
      ),
    );
  }
}
