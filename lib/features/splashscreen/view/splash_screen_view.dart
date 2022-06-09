import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final _controller = Modular.get<SplashScreenController>();
  @override
  void initState() {
    _controller.setIsInitialValue(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      _controller.setIsInitialValue(false);
    });
    Future.delayed(const Duration(seconds: 5), () {
      Modular.to.pushNamed('/homepage/');
    });
    return Scaffold(
      backgroundColor: AppColorTheme.landingPageBackgroundColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            right: MediaQuery.of(context).size.height * -0.4,
            child: Observer(builder: (_) {
              return AnimatedContainer(
                duration: const Duration(seconds: 5),
                transform: _controller.isInitialValue
                    ? Matrix4.translationValues(
                        MediaQuery.of(context).size.height * -1, 0, 0)
                    : Matrix4.translationValues(
                        MediaQuery.of(context).size.height * 0.00126, 0, 0),
                child: Text(
                  'Dictionary',
                  textScaleFactor:
                      (MediaQuery.of(context).size.height * 0.00124),
                  style: AppThemeData().titleTheme.textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                ),
              );
            }),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            right: MediaQuery.of(context).size.height * 0.09,
            child: Observer(builder: (_) {
              return AnimatedContainer(
                duration: const Duration(seconds: 5),
                transform: _controller.isInitialValue
                    ? Matrix4.translationValues(
                        MediaQuery.of(context).size.height, 0, 0)
                    : Matrix4.translationValues(
                        MediaQuery.of(context).size.height * 0.00126, 0, 0),
                child: Text(
                  'Dictionary',
                  textScaleFactor:
                      (MediaQuery.of(context).size.height * 0.00124),
                  style: AppThemeData().titleTheme.textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                ),
              );
            }),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.88,
              right: MediaQuery.of(context).size.width * 0.06,
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.9,
                color: AppColorTheme.titleColor,
              )),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.9,
            right: MediaQuery.of(context).size.width * 0.3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By Thiago Nagaoka \n and \n Victor Iurkiewiecz',
                  style: AppThemeData().titleTheme.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
