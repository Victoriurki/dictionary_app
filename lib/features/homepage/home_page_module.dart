import 'package:dictionary_app/core/adapter/remote_client/remote_client.dart';
import 'package:dictionary_app/features/homepage/controller/home_page_controller.dart';
import 'package:dictionary_app/features/homepage/view/home_page_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<RemoteClient>((i) => DioRemoteClient()),
        Bind<HomePageController>((i) => HomePageController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: ((context, args) => const HomePageView()),
        ),
      ];
}
