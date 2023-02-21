import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ExplanationDialog extends StatelessWidget {
  const ExplanationDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding:
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      title: const Text('Como funciona?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Para o cálculo é necessário as seguintes informações:"),
          const SizedBox(height: 10),
          const Text("1. A leitura atual do medidor de energia."),
          const SizedBox(height: 10),
          const Text("2. A leitura anterior do medidor de energia."),
          const SizedBox(height: 10),
          const Text(
              "3. O período de tempo entre as leituras (geralmente um mês)."),
          const SizedBox(height: 10),
          const Text(
              "4. O valor do kWh determinado pela distribuidora de energia."),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Modular.to.pop,
          child: const Text('Ok'),
        ),
      ],
    );
  }
}
