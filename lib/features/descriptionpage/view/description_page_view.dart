import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:dictionary_app/core/generics/api_model.dart';
import 'package:flutter/material.dart';

class DescriptionPageView extends StatelessWidget {
  const DescriptionPageView({Key? key, required this.word}) : super(key: key);
  final WordModel word;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorTheme.definitionPageBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                word.word!,
                style: AppThemeData().textTheme.textTheme.titleSmall,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                  child: SizedBox(
                    height: 394,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Text(
                          word.meanings![0].definitions![0].definition!,
                          style: AppThemeData().textTheme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            word.meanings![0].definitions!.length >= 2
                ? Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            color: AppColorTheme.textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            children: [
                              Text(
                                word.meanings![0].definitions!.length >= 2
                                    ? word.meanings![0].definitions![1]
                                        .definition!
                                    : '',
                                style: AppThemeData()
                                    .textTheme
                                    .textTheme
                                    .titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
