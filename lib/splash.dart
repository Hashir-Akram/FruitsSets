import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruitset/login.dart';

import 'bottombanigation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    // Start the timer
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return SignIn();
        },
      ), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage("resources/images/logo.png"),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage("resources/images/logo2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
