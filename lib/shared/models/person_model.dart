// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);

import 'dart:convert';

PersonModel personFromJson(String str) =>
    PersonModel.fromJson(json.decode(str));

String personToJson(PersonModel data) => json.encode(data.toJson());

class PersonModel {
  String id;
  String name;
  int age;
  String gender;
  dynamic lonlat;
  DateTime createdAt;
  DateTime updatedAt;
  bool infected;

  PersonModel({
    this.id,
    this.name,
    this.age,
    this.gender,
    this.lonlat,
    this.createdAt,
    this.updatedAt,
    this.infected,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        gender: json["gender"],
        lonlat: json["lonlat"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        infected: json["infected"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "gender": gender,
        "lonlat": lonlat,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "infected": infected,
      };
}
