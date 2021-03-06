import 'package:mobx/mobx.dart';
part 'splash_screen_controller.g.dart';

class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  @observable
  bool isInitialValue = true;

  @action
  setIsInitialValue(value) => isInitialValue = value;
}
