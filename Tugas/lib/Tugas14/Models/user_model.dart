import 'dart:convert';

class UserModel {
  String id, title, value;
  DateTime createdAt;

  UserModel({
    required this.title,
    required this.value,
    required this.id,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      title: json["title"],
      value: json["value"],
      id: json["id"],
      createdAt: DateTime.parse(json["createdAt"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "value": value,
      "id": id,
      "createdAt": createdAt.toIso8601String(),
    };
  }
}

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModeToJson(UserModel data) => json.encode(data.toJson());
