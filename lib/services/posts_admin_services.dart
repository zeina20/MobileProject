import 'package:http/http.dart' as http;

import '../model/PostsAdmin.dart';

class PostsAdminService {
  getOrganizations() async {
    var client = http.Client();

    var uri = Uri.parse('https://www.episodate.com/api/most-popular?page=1');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      String jsonString = response.body;
      return postsFromJson(jsonString);
    }
  }
}
