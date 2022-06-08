import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Teste - Splash Screen'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Modular.to.navigate('/homepage/');
      }),
    );
  }
}
