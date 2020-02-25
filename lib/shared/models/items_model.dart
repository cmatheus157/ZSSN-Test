// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) =>
    List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
  String location;
  int quantity;
  DateTime createdAt;
  DateTime updatedAt;
  Item item;

  Items({
    this.location,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.item,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        location: json["location"],
        quantity: json["quantity"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        item: Item.fromJson(json["item"]),
      );

  Map<String, dynamic> toJson() => {
        "location": location,
        "quantity": quantity,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "item": item.toJson(),
      };
}

class Item {
  String name;
  int points;

  Item({
    this.name,
    this.points,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        points: json["points"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "points": points,
      };
}
