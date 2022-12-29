import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    required this.password,
  });

  String id;
  String name;
  String email;
  String address;
  String phone;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        //"id": id,
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,
        "password": password,
      };
}
