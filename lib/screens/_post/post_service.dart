import 'dart:convert';
import 'package:http/http.dart' as http;
import 'post_model.dart';

class PostService {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';

  static Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  static Future<void> createPost({
    required String title,
    required String body,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/posts'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': title,
        'body': body,
        'userId': 1,
      }),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create post');
    }
  }
}
