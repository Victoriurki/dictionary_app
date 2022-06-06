import 'package:dictionary_app/features/descriptionpage/description_page_module.dart';
import 'package:dictionary_app/features/homepage/home_page_module.dart';
import 'package:dictionary_app/features/landingpage/landing_page_module.dart';
import 'package:dictionary_app/features/splashscreen/splash_screen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: LandingPageModule(),
        ),
        ModuleRoute(
          '/splashscreen/',
          module: SplashScreenModule(),
        ),
        ModuleRoute(
          '/homepage/',
          module: HomePageModule(),
        ),
        ModuleRoute(
          '/description/',
          module: DescriptionPageModule(),
        ),
      ];
}
