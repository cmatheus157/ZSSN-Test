import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/person_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PersonRepository repository;

  @observable
  String stringValue;
  @observable
  ObservableFuture<List<PersonModel>> pessoas;

  _HomeControllerBase(this.repository) {
    pessoas = repository.getPerson().asObservable();
  }

  @action
  getValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    stringValue = prefs.getString('IdPerson');
    return stringValue;
  }
}
