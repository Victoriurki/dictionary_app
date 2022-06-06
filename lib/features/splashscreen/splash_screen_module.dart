import 'package:dictionary_app/features/landingpage/view/landing_page_view.dart';
import 'package:dictionary_app/features/splashscreen/view/splash_screen_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => SplashScreenView()),
        ),
      ];
}
