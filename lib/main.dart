import 'package:flutter/material.dart';
import 'screens/_post/post_create_screen.dart';  // 경로는 상황에 맞게 조정

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // 홈 화면 또는 첫 화면 설정
      home: const HomeScreen(),

      // 라우트 등록
      routes: {
        '/post/create': (context) => const PostCreateScreen(),
        // 필요하면 다른 라우트도 등록 가능
      },
    );
  }
}

// 임시 홈스크린 (버튼 누르면 글작성 화면으로 이동하는 예시)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('홈')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/post/create');
          },
          child: const Text('글 작성하기'),
        ),
      ),
    );
  }
}
