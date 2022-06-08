import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.navigate('/splashscreen/');
    });

    return Scaffold(
      backgroundColor: AppColorTheme.landingPageBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 250,
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 360,
                child: Text(
                  'Dictionary',
                  style: AppThemeData().titleTheme.textTheme.titleLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'Dictionary  ',
                style: AppThemeData().titleTheme.textTheme.titleLarge,
                overflow: TextOverflow.clip,
                maxLines: 1,
                softWrap: false,
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                color: AppColorTheme.titleColor,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'By Thiago Nagaoka \n and \n Victor Iurkiewiecz',
                style: AppThemeData().titleTheme.textTheme.titleSmall,
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
