import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DescriptionPageView extends StatelessWidget {
  const DescriptionPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Teste - Description page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          Modular.to.navigate('/');
        },
      ),
    );
  }
}
