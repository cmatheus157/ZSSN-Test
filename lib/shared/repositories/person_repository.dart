import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/utils/constants.dart';

class PersonRepository {
  final Dio dio;
  PersonModel personRepository;
  Geolocator geolocator = Geolocator();
  Position userLocation;
  PersonModel personActive;

  PersonRepository(this.dio);
  Future<Position> getLocation() async {
    var currentLocation;
    try {
      currentLocation = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    userLocation = currentLocation;
    return userLocation;
  }

  Future<PersonModel> postPerson(PersonModel person) async {
    await getLocation();
    var response = await dio.post('people.json', data: {
      "name": person.name,
      "age": person.age,
      "gender": person.gender,
      "lonlat": 'POINT (${userLocation.latitude} ${userLocation.longitude})',
      "items": 'Fiji Water:10;Campbell Soup:5'
    });
    personRepository = PersonModel.fromJson(response.data);
    print(personRepository.id);
    print(personRepository.lonlat);
  }

  Future<PersonModel> updatePerson(PersonModel person) async {
    await getLocation();
    var response = await dio.patch('people/${person.id}.json', data: {
      "name": person.name,
      "age": person.age,
      "gender": person.gender,
      "lonlat": 'POINT (${userLocation.latitude} ${userLocation.longitude})',
    });

    PersonModel pessoa = PersonModel.fromJson(response.data);
    print("${pessoa.id} id nome e : ${pessoa.name}");
    return pessoa;
  }

  Future<List<PersonModel>> getPeople() async {
    var response = await dio.get('people.json');
    List<PersonModel> list = [];

    for (Map<String, dynamic> json in response.data) {
      PersonModel pessoa = PersonModel.fromJson(json);
      list.add(pessoa);
    }
    return list;
  }

  Future<PersonModel> getPerson(String idPerson) async {
    var response = await dio.get('people/${idPerson}.json');

    PersonModel pessoa = PersonModel.fromJson(response.data);
    print("${pessoa.id} id nome e : ${pessoa.name}");
    personActive = pessoa;
    return pessoa;
  }
}
