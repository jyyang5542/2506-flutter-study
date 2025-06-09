import 'package:flutter/material.dart';
import 'package:study/shared/widgets/header.dart';
import 'package:study/shared/widgets/footer.dart';
import 'widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: const HomeContent(),
      bottomNavigationBar: const Footer(),
    );
  }
}
