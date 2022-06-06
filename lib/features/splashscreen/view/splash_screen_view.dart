import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Teste - Splash Screen'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Modular.to.navigate('/homepage/');
      }),
    );
  }
}
