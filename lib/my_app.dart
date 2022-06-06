import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dictionary App',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
    );
  }
}
