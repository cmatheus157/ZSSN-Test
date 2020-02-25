import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/shared/models/items_model.dart';
import 'package:zssn/shared/utils/constants.dart';

class ItemRepository {
  final Dio dio;

  ItemRepository(this.dio);

  // Future<Person> getPersonitems(String idPerson) async {
  //   var response = await dio.get('people/${idPerson}/properties.json');

  //   Person pessoa = Person.fromJson(response.data);
  //   print("${pessoa.item.points} id nome e : ${pessoa.item.name}");
  //   return pessoa;
  // }

  Future<List<Items>> getPersonitems(String id) async {
    var response = await dio.get('people/$id/properties.json');
    List<Items> list = [];
    //print(response.data["quantity"]);
    for (Map<String, dynamic> json in response.data) {
      Items pessoa = Items.fromJson(json);
      list.add(pessoa);
    }
    return list;
  }
}
