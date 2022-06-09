import 'package:dictionary_app/features/splashscreen/controller/splash_screen_controller.dart';
import 'package:dictionary_app/features/splashscreen/view/splash_screen_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenModule extends Module {
  @override
  List<Bind> get binds => [
    Bind<SplashScreenController>((i) => SplashScreenController())
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => const SplashScreenView()),
        ),
      ];
}
