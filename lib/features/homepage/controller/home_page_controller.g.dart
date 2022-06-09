// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageController on _HomePageControllerBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_HomePageControllerBase.isValid'))
      .value;
  Computed<String>? _$wordTypeComputed;

  @override
  String get wordType =>
      (_$wordTypeComputed ??= Computed<String>(() => super.wordType,
              name: '_HomePageControllerBase.wordType'))
          .value;
  Computed<String>? _$phoneticComputed;

  @override
  String get phonetic =>
      (_$phoneticComputed ??= Computed<String>(() => super.phonetic,
              name: '_HomePageControllerBase.phonetic'))
          .value;

  late final _$wordSearchAtom =
      Atom(name: '_HomePageControllerBase.wordSearch', context: context);

  @override
  String get wordSearch {
    _$wordSearchAtom.reportRead();
    return super.wordSearch;
  }

  @override
  set wordSearch(String value) {
    _$wordSearchAtom.reportWrite(value, super.wordSearch, () {
      super.wordSearch = value;
    });
  }

  late final _$wordsFetchedAtom =
      Atom(name: '_HomePageControllerBase.wordsFetched', context: context);

  @override
  ObservableList<dynamic> get wordsFetched {
    _$wordsFetchedAtom.reportRead();
    return super.wordsFetched;
  }

  @override
  set wordsFetched(ObservableList<dynamic> value) {
    _$wordsFetchedAtom.reportWrite(value, super.wordsFetched, () {
      super.wordsFetched = value;
    });
  }

  late final _$getWordAsyncAction =
      AsyncAction('_HomePageControllerBase.getWord', context: context);

  @override
  Future<Resource<void, String>> getWord() {
    return _$getWordAsyncAction.run(() => super.getWord());
  }

  late final _$_HomePageControllerBaseActionController =
      ActionController(name: '_HomePageControllerBase', context: context);

  @override
  dynamic setWordSearch(dynamic value) {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.setWordSearch');
    try {
      return super.setWordSearch(value);
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
wordSearch: ${wordSearch},
wordsFetched: ${wordsFetched},
isValid: ${isValid},
wordType: ${wordType},
phonetic: ${phonetic}
    ''';
  }
}
