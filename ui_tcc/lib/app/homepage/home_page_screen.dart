import 'package:flutter/material.dart';
import 'package:uitcc/app/homepage/widgets/explanation_dialog.dart';
import 'package:uitcc/app/shared/widgets/custom_text_form_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 0),
      () => showDialog(
        context: context,
        useSafeArea: true,
        builder: (BuildContext context) => const ExplanationDialog(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados para o cálculo",
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            LeituraDeEnergia(),
          ],
        ),
      ),
    );
  }
}

// LEITURA DE ENERGIA
class LeituraDeEnergia extends StatefulWidget {
  const LeituraDeEnergia({Key? key}) : super(key: key);

  @override
  State<LeituraDeEnergia> createState() => _LeituraDeEnergiaState();
}

class _LeituraDeEnergiaState extends State<LeituraDeEnergia> {
  final kw_atualEC = TextEditingController();
  final kw_anteriorEC = TextEditingController();
  final kw_valorEC = TextEditingController();

  @override
  void dispose() {
    kw_atualEC;
    kw_anteriorEC;
    kw_valorEC;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Leitura de energia",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: 'Atual KW/h',
              maxWidth: 120.0,
              controller: kw_atualEC,
            ),
            const SizedBox(width: 10),
            CustomTextFormField(
              hintText: 'Anterior KW/h',
              maxWidth: 140.0,
              controller: kw_anteriorEC,
            ),
          ],
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          hintText: 'Valor por KW/h',
          maxWidth: 160.0,
          controller: kw_valorEC,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Calcular"),
        ),
      ],
    );
  }
}
