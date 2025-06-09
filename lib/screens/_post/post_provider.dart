import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post_service.dart';
import 'post_model.dart';

final postListProvider = FutureProvider<List<Post>>((ref) async {
  return PostService.fetchPosts();
});
