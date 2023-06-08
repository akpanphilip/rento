// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, must_call_super, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rento/screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade200,
              Colors.grey,
              Colors.grey,
              Colors.grey.shade200
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: animate ? 10 : -70,
                left: animate ? 10 : -70,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 120,
                left: animate ? 40 : 30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  // child: Text(
                  //   'Rent a vehicle for your need',
                  //   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  // ),
                  child: Container(
                    height: 800,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 220,
                left: animate ? -8 : 8,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 250,
                  ),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: animate ? 40 : 30,
                right: animate ? 40 : 30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }
}
