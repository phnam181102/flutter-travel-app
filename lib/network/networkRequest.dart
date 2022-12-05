import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:travel_app/models/post.dart';
import 'package:http/http.dart' as http;

class NetworkRequest {
  static const String url = 'https://638c6ae8d2fc4a058a574a74.mockapi.io/api/places';

  static List<Post> parsePost(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Post> posts = list.map((model) => Post.fromJson(model)).toList();
    return posts;
  }

  static Future<List<Post>> fetchPosts({int page = 1}) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return compute(parsePost, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }
}