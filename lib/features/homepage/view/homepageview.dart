import 'package:dictionary_app/core/constants/app_theme.dart';
import 'package:dictionary_app/features/homepage/controller/homepagecontroller.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFB98013),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Observer(builder: (_) {
              return Text(
                  _controller.wordSearch.isNotEmpty ? _controller.wordType : '',
                  style: AppThemeData().textTheme.textTheme.titleSmall);
            }),
            Column(children: [
              Observer(builder: (_) {
                return TextField(
                  onChanged: (newValue) async {
                    _controller.setWordSearch(newValue);
                    await _controller.getWord();
                  },
                  style: AppThemeData().textTheme.textTheme.titleLarge,
                );
              }),
              Observer(builder: (_) {
                return Text(
                  _controller.wordSearch.isNotEmpty ? _controller.phonetic : '',
                  style: AppThemeData().textTheme.textTheme.titleSmall,
                );
              }),
            ]),
            Observer(builder: (_) {
              return InkWell(
                onTap: () async {
                  await _controller.getWord();
                },
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width * 0.7,
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
                    )),
              );
            }),
          ],
        ),
      ),
    );
  }
}
