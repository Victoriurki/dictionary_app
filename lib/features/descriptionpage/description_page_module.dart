import 'package:dictionary_app/features/descriptionpage/view/descriptionpage.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DescriptionPageModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => DescriptionPageView()),
        ),
      ];
}
