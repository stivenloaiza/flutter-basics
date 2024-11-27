import 'dart:convert';

//DragonBallModel dragonBallModelFromJson(String str) => DragonBallModel.fromJson(json.decode(str));

//String dragonBallModelToJson(DragonBallModel data) => json.encode(data.toJson());

class DragonBallModel {
  int id;
  String name;
  String ki;
  String maxKi;
  String race;
  String gender;
  String description;
  String image;
  String affiliation;
  dynamic deletedAt;

  DragonBallModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.image,
    required this.affiliation,
    required this.deletedAt,
  });

  factory DragonBallModel.fromJson(Map<String, dynamic> json) => DragonBallModel(
    id: json["id"],
    name: json["name"],
    ki: json["ki"],
    maxKi: json["maxKi"],
    race: json["race"],
    gender: json["gender"],
    description: json["description"],
    image: json["image"],
    affiliation: json["affiliation"],
    deletedAt: json["deletedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "ki": ki,
    "maxKi": maxKi,
    "race": race,
    "gender": gender,
    "description": description,
    "image": image,
    "affiliation": affiliation,
    "deletedAt": deletedAt,
  };
}