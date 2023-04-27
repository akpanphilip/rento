// the root page shall control the screen menu transition

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rento/screen/all_cars_screen.dart';
import 'package:rento/screen/history_screen.dart';
import 'package:rento/screen/home_screen.dart';
import 'package:rento/screen/login_screen.dart';
import 'package:rento/screen/profile_screen.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // _bottomNavIdex to control the page index
  int _bottomNavIndex = 0;

  // list of the pages
  List<Widget> pages = const [HomePage(), AllCars(), History(), Profile()];

  // list of the pages icons
  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.directions_car_outlined,
    Icons.history_outlined,
    Icons.account_circle_outlined
  ];

  // List of the pages title
  List<String> titleList = ['Home', 'Cars', 'History', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.grey,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),

      // body to hold the pages widgets
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const Login(), type: PageTransitionType.bottomToTop));
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.file_upload_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Colors.teal,
          activeColor: Colors.teal,
          inactiveColor: Colors.teal.withOpacity(.3),
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          }),
    );
  }
}
