import 'dart:convert';

List<UsersModel> usersFromJson(String str) => List<UsersModel>.from(
    json.decode(str).map((x) => UsersModel.fromJson((x))));

String usersToJson(List<UsersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersModel {
  UsersModel({
    required this.id,
    required this.name,
    required this.email,
  });

  String id;
  String name;
  String email;

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
