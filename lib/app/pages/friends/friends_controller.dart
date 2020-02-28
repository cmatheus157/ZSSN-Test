import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zssn/app/pages/friends/friends_page.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/hive_repository.dart';

part 'friends_controller.g.dart';

class FriendsController = _FriendsControllerBase with _$FriendsController;

abstract class _FriendsControllerBase with Store {
  LocalStorage storage = Modular.get();

  _FriendsControllerBase() {
    init();
  }

  @observable
  PersonModel person;

  @observable
  ObservableList<String> list = <String>[].asObservable();

  @observable
  String text = '';

  @action
  init() async {
    List<String> listLocal = await storage.getFriends('list');
    if (listLocal == null) {
      list = <String>[].asObservable();
    } else {
      list = listLocal.asObservable();
    }
  }

  Future<List<String>> getAll(String key) async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    final box = await Hive.openBox('friendBox');
    box.get(key);
  }

  @action
  void save() {
    list.add(text);
    storage.saveFriends('list', list);
  }

  @action
  Future<void> getPerson(String id) async {
    var pessoa = await personRepository.getPerson(id);
    person = pessoa;
  }

  @action
  void remove(int index) {
    list.removeAt(index);
    storage.saveFriends('list', list);
  }
}
