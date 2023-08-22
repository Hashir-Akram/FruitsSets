import 'package:flutter/material.dart';
import 'package:fruitset/profile.dart';
import 'package:fruitset/splash.dart';
import 'about.dart';
import 'bottombanigation.dart';
import 'home.dart';

void main() {  // Entry point of application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: Splash(),
    );
  }
}














