import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.navigate('/homepage/');
    });
    return Scaffold(
      backgroundColor: const Color(0xFF541B1D),
      body: Center(
        child: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_wu0yt0ej.json'),
      ),
    );
  }
}
