import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorTheme.landingPageBackgroundColor,
        body: InkWell(
          onTap: () {
            Modular.to.navigate('/splashscreen/');
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                right: MediaQuery.of(context).size.width * -0.82,
                child: Text(
                  'Dictionary',
                  style: AppThemeData().titleTheme.textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.5,
                right: MediaQuery.of(context).size.width * 0.18,
                child: Text(
                  'Dictionary',
                  style: AppThemeData().titleTheme.textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.88,
                  right: MediaQuery.of(context).size.width * 0.15,
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
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
        ));
  }
}
