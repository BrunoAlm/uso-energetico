import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Login Page, tem que ver qual forma de login vai ser'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: Modular.to.pop,
        label: const Text('Ir para Home'),
      ),
    );
  }
}
