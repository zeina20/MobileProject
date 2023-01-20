import 'dart:convert';

List<Users> userFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String userToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    this.id,
    required this.name,
    required this.email,
    this.address,
    required this.phone,
  });

  String? id;
  String name;
  String email;
  String? address;
  String phone;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
       // "id": id,
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,

      };
}
