import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '홈 화면입니다.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
