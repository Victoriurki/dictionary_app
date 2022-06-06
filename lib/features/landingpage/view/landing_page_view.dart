import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Teste - Landing page'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Modular.to.navigate('/splashscreen/');
      }),
    );
  }
}
