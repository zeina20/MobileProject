// To parse this JSON data, do
//
//     final Users = UsersFromJson(jsonString);

import 'dart:convert';



List<Profile> ProfileFromJson(String str) =>
    List<Profile>.from(json.decode(str).map((x) => Profile.fromJson(x)));

String ProfileToJson(List<Profile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Profile {
  Profile({
    this.id,
    required this.name,
    required this.mobile,
    required this.email
    
  });
  String? id;
  String name;
  String mobile;
  String email;
  

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"]
        
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email
       
      };
}