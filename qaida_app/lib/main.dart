import 'package:flutter/material.dart';
import 'package:qaida_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qaida App',
      theme: ThemeData(
      ),
      
      home: SplashScreen(),
    );
  }
}

