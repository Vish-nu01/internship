// To parse this JSON data, do
//
//     final httpModel = httpModelFromJson(jsonString);

import 'dart:convert';

HttpModel httpModelFromJson(String str) => HttpModel.fromJson(json.decode(str));

String httpModelToJson(HttpModel data) => json.encode(data.toJson());

class HttpModel {
  String the080000;
  String the130000;
  String the200000;

  HttpModel({
    required this.the080000,
    required this.the130000,
    required this.the200000,
  });

  factory HttpModel.fromJson(Map<String, dynamic> json) => HttpModel(
    the080000: json["08:00:00"],
    the130000: json["13:00:00"],
    the200000: json["20:00:00"],
  );

  Map<String, dynamic> toJson() => {
    "08:00:00": the080000,
    "13:00:00": the130000,
    "20:00:00": the200000,
  };
}
