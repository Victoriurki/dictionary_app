// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashScreenController on _SplashScreenControllerBase, Store {
  late final _$isInitialValueAtom = Atom(
      name: '_SplashScreenControllerBase.isInitialValue', context: context);

  @override
  bool get isInitialValue {
    _$isInitialValueAtom.reportRead();
    return super.isInitialValue;
  }

  @override
  set isInitialValue(bool value) {
    _$isInitialValueAtom.reportWrite(value, super.isInitialValue, () {
      super.isInitialValue = value;
    });
  }

  late final _$_SplashScreenControllerBaseActionController =
      ActionController(name: '_SplashScreenControllerBase', context: context);

  @override
  dynamic setIsInitialValue(dynamic value) {
    final _$actionInfo = _$_SplashScreenControllerBaseActionController
        .startAction(name: '_SplashScreenControllerBase.setIsInitialValue');
    try {
      return super.setIsInitialValue(value);
    } finally {
      _$_SplashScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isInitialValue: ${isInitialValue}
    ''';
  }
}
