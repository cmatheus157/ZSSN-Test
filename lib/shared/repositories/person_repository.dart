import 'package:dio/dio.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/utils/constants.dart';

class PersonRepository {
  final Dio dio;

  PersonRepository(this.dio);

  Future<List<PersonModel>> getPerson() async {
    var response = await dio.get('people.json');
    List<PersonModel> list = [];

    for (Map<String, dynamic> json in response.data) {
      PersonModel pessoa = PersonModel.fromJson(json);
      list.add(pessoa);
    }
    return list;
  }
}
