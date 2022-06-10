import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:dictionary_app/features/homepage/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _controller = Modular.get<HomePageController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorTheme.homePageBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              width: MediaQuery.of(context).size.width,
              child: Observer(
                builder: (_) {
                  return Text(_controller.wordType,
                      style: AppThemeData().textTheme.textTheme.titleSmall);
                },
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Observer(
                        builder: (_) {
                          return TextField(
                            cursorColor: AppColorTheme.textColor,
                            autofocus: true,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle:
                                  AppThemeData().textTheme.textTheme.titleLarge,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                            onChanged: (newValue) async {
                              _controller.setWordSearch(newValue);
                              await _controller.getWord();
                            },
                            style:
                                AppThemeData().textTheme.textTheme.titleLarge,
                          );
                        },
                      ),
                      Observer(
                        builder: (_) {
                          return Text(
                            _controller.phonetic,
                            style: AppThemeData()
                                .specialFontThemeData
                                .textTheme
                                .titleSmall,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Observer(
              builder: (_) {
                return InkWell(
                  onTap: _controller.isValid
                      ? () async {
                          await _controller.getWord();
                          FocusScope.of(context).unfocus();
                          await Modular.to.pushNamed('/description/',
                              arguments: _controller.wordsFetched[0]);
                        }
                      : null,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 26.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColorTheme.textColor),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width * 0.844,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'OK',
                          style: AppThemeData().textTheme.textTheme.titleMedium,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 45,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
