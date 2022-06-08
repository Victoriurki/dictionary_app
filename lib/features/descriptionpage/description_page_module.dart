import 'package:dictionary_app/features/descriptionpage/view/description_page_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DescriptionPageModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) =>  DescriptionPageView(word: args.data)),
        ),
      ];
}
