import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('홈')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('환영합니다, $email'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('로그아웃'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/post/create');
              },
              child: const Text('글 작성하기'),
            ),
          ],
        ),
      ),
    );
  }
}
