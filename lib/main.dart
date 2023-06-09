// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rento/screen/onboarding_screen.dart';

import 'screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Exo-Regular'),
    );
  }
}
