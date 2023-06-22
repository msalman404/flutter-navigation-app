import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';
import 'package:navigation/screen_two.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) => const ScreenTwo(),
      },
      // home: HomeScreen(),
    );
  }
}
