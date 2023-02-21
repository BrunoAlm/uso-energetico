import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Login Page, tem que ver qual forma de login vai ser'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            heroTag: 'register',
            onPressed: () {
              Modular.to.pushNamed('/register');
            },
            label: const Text('Registrar'),
          ),
          const SizedBox(width: 10),
          FloatingActionButton.extended(
            heroTag: 'home',
            onPressed: () {
              Modular.to.pushNamed('/home/');
            },
            label: const Text('Ir para Home'),
          ),
        ],
      ),
    );
  }
}
