import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/hive_repository.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'package:zssn/shared/utils/constants.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PersonRepository repository = Modular.get();
  final LocalStorage storageRepository = Modular.get();

  Geolocator geolocator = Geolocator();
  @observable
  Position userLocation;

  @observable
  PersonModel personGet;
  @observable
  double latitude;
  @observable
  double longitude;
  @observable
  String idPerson;
  @observable
  var gender;
  @observable
  String stringValue;
  @observable
  ObservableFuture<List<PersonModel>> pessoas;
  @observable
  PersonModel person;

  _HomeControllerBase() {
    getIdPersonToHive();
    init();
  }
  @observable
  String id;

  @observable
  String text = '';

  @action
  init() async {
    String idLocal = await storageRepository.getId('id');
    if (idLocal == null) {
      id = null;
    } else {
      id = idLocal;
    }
  }

  @action
  void saveId() {
    id = text;
    storageRepository.saveId('id', id);
  }

  @action
  void removeID(int index) {
    id = null;
    storageRepository.deleteId('id');
  }

  @action
  setGender(String _gender) {
    gender = _gender;
  }

  @action
  getAllPeople() {
    pessoas = repository.getPeople().asObservable();
  }

  @action
  Future<PersonModel> getPerson(String id) async {
    var _person = await repository.getPerson(id);
    personGet = _person;
    return _person;
  }

  @action
  postPerson(PersonModel _person) async {
    await repository.postPerson(_person);
    text = repository.personRepository.id;
    saveId();
    // addIdPersonToHive(repository.personRepository.id);
  }

  @action
  updatePerson(PersonModel _person) async {
    await repository.updatePerson(_person);
    print(repository.personRepository.id);
    print(repository.personRepository.name);
  }

  addIdPersonToHive(String person) async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox('testBox');
    box.put('IdPerson', person);
    print('Name: ${box.get('IdPerson')}');
  }

  @action
  Future<String> getIdPersonToHive() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox('testBox');
    String personId = await box.get('IdPerson');
    print('id do banco : ${personId}');
    idPerson = personId;
    return idPerson;
  }

  @action
  Future<Position> getLocation() async {
    var currentLocation;
    try {
      currentLocation = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    userLocation = currentLocation;
    latitude = userLocation.latitude;
    longitude = userLocation.longitude;
    return userLocation;
  }
}
