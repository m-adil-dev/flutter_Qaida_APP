import 'package:flutter/material.dart';
import 'dart:async';

import 'package:qaida_app/home_screen.dart';
import 'package:qaida_app/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait 5 seconds then go to HomeScreen
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          "assets/splash_image.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}


