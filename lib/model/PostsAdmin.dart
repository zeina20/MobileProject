import 'dart:convert';

import 'package:MobileProject/services/posts_admin_services.dart';
import 'package:flutter/foundation.dart';

// List<PostAdmin> postFromJson(String str) =>
//     List<PostAdmin>.from(json.decode(str).map((x) => PostAdmin.fromJson(x)));

// String postToJson(List<PostAdmin> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

//
List<PostAdmin> postsFromJson(String responseBody) {
  final parsed = jsonDecode(responseBody)['tv_shows'];

  return parsed.map<PostAdmin>((json) => PostAdmin.fromJson(json)).toList();
}

class PostAdmin {
  PostAdmin({
    this.id,
    this.name,
    this.permalink,
    this.startDate,
    this.endDate,
    this.network,
    this.imageThumbnailPath,
  });

  int? id;
  String? name;
  String? permalink;
  DateTime? startDate;
  dynamic? endDate;
  String? network;
  String? imageThumbnailPath;

  factory PostAdmin.fromJson(Map<String, dynamic> json) => PostAdmin(
        id: json["id"],
        name: json["name"],
        permalink: json["permalink"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"],
        network: json["network"],
        imageThumbnailPath: json["image_thumbnail_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "permalink": permalink,
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date": endDate,
        "network": network,
        "image_thumbnail_path": imageThumbnailPath,
      };
}
