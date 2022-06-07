import 'package:dictionary_app/core/adapter/remote_client/remote_client.dart';
import 'package:dictionary_app/core/constants/api_routes.dart';
import 'package:dictionary_app/core/generics/api_model.dart';
import 'package:dictionary_app/core/generics/resouce.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'homepagecontroller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  final remoteClient = Modular.get<RemoteClient>();

  @observable
  String wordSearch = '';

  @observable
  ObservableList wordsFetched = [].asObservable();

  @computed
  String get wordType {
    return wordsFetched.isNotEmpty
        ? wordsFetched[0].meanings[0].partOfSpeech
        : '';
  }

  @computed
  String get phonetic {
    return wordsFetched.isNotEmpty
        ? wordsFetched[0].phonetic != null
            ? wordsFetched[0].phonetic!
            : ''
        : '';
  }

  @action
  setWordSearch(value) => wordSearch = value;

  @action
  Future<Resource<void, String>> getWord() async {
    final response =
        await remoteClient.get('${ApiRoutes.baseUrl}/${wordSearch}');
    if (response.statusCode == 200) {
      wordsFetched = (response.data as List)
          .map((e) => WordModel.fromJson(e))
          .toList()
          .asObservable();
      return Resource.success();
    }
    return Resource.failed();
  }
}
