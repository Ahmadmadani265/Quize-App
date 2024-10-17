import 'package:flutter/material.dart';
import 'package:simple_quize_app/page/home_page.dart';
import 'package:simple_quize_app/page/on_boarding_page.dart';

void main() {
  runApp(const QuizeApp());
}

class QuizeApp extends StatelessWidget {
  const QuizeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoardingPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
