import 'package:dictionary_app/features/homepage/view/homepageview.dart';
import 'package:dictionary_app/features/landingpage/view/landing_page_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LandingPageModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => LandingPageView()),
        ),
      ];
}
