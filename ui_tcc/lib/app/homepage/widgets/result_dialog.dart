import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ResultDialog extends StatelessWidget {
  final double leituraAtual;
  final double leituraAnterior;
  final double valorDoKwh;
  final int periodo;
  final double valorAPagar;

  const ResultDialog({
    Key? key,
    required this.leituraAtual,
    required this.leituraAnterior,
    required this.valorDoKwh,
    required this.periodo,
    required this.valorAPagar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding:
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      title: const Text('Resultado'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*
           leituraAtual,
           leituraAnterior,
           periodo,
           valorDoKwh,
           */
          Text("1. A leitura atual do medidor de energia: $leituraAtual"),
          const SizedBox(height: 10),
          Text("2. A leitura anterior do medidor de energia: $leituraAnterior"),
          const SizedBox(height: 10),
          Text(
              "3. O valor do kWh determinado pela distribuidora de energia: $valorDoKwh"),
          const SizedBox(height: 20),
          Center(child: Text("Valor a pagar: $valorAPagar")),
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
