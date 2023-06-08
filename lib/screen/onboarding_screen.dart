import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'root_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
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
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              onPageChanged: (int page) {
                setState(() {
                  currentIndex = page;
                });
              },
              controller: _pageController,
              children: const [
                CreatePage(
                    logoText: 'RENTO',
                    leadText: 'Rent cars that meet your need',
                    subText: 'some random text as description'),
                CreatePage(
                    logoText: 'RENTO',
                    leadText: 'Easy lease your car for rent',
                    subText: 'some random text as description'),
                CreatePage(
                    logoText: 'RENTO',
                    leadText: 'Find a driver for hire',
                    subText: 'some random text as description')
              ],
            ),
            Positioned(
              bottom: 80,
              left: 30,
              child: Row(
                children: _buildIndicator(),
              ),
            ),
            // buttons
            Positioned(
                bottom: 60,
                right: 30,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (currentIndex < 2) {
                            currentIndex++;
                            if (currentIndex < 3) {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            }
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Login()));
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 24,
                        color: Colors.white,
                      )),
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }

  // Extra widgets

  // Create the indicator decorations widget
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (var i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

class CreatePage extends StatelessWidget {
  final String logoText;
  final String leadText;
  final String subText;

  const CreatePage({
    super.key,
    required this.logoText,
    required this.leadText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            logoText,
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Text(
            leadText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subText,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
