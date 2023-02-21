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
            builder: (BuildContext context) => const ExplanationDialog()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text("Ue carai")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextFormField(
                  hintText: 'Leitura Atual',
                  maxWidth: 100.0,
                ),
                const SizedBox(width: 10),
                const CustomTextFormField(
                  hintText: 'Leitura anterior',
                  maxWidth: 100.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
