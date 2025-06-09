import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post_model.dart';
import 'post_provider.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postAsync = ref.watch(postListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('게시글 목록')),
      body: postAsync.when(
        data: (posts) => ListView.separated(
          itemCount: posts.length,
          separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final post = posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('에러 발생: $e')),
      ),
    );
  }
}
