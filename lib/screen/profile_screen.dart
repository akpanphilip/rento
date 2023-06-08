// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.keyboard_backspace,
              size: 20,
              color: Colors.black,
            )
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
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
        child: Center(
          child: Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10.0),
                    shape: BoxShape.circle,
                    color: Colors.grey),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[800]),
                          child: Icon(
                            Icons.edit,
                            size: 17,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "John Doe",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(
                "johndoe@gmail.com",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SectionProfile(
                        size: size,
                        icon: Icons.help_rounded,
                        text: 'Help & Support',
                        iconArrow: Icons.navigate_next),
                    SectionProfile(
                        size: size,
                        icon: Icons.settings,
                        text: 'Settings',
                        iconArrow: Icons.navigate_next),
                    SectionProfile(
                        size: size,
                        icon: Icons.person_add,
                        text: 'Invite a friend',
                        iconArrow: Icons.navigate_next),
                    SectionProfile(
                      size: size,
                      icon: Icons.logout,
                      text: 'Logout',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SectionProfile extends StatelessWidget {
  final IconData? icon;
  final IconData? iconArrow;
  final String text;

  const SectionProfile({
    super.key,
    required this.icon,
    this.iconArrow,
    required this.text,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: Color(0xffF3F7FB), borderRadius: BorderRadius.circular(30)),
      height: 55,
      width: size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [Icon(icon, size: 18), SizedBox(width: 10), Text(text)],
            ),
          ),
          Icon(iconArrow)
        ],
      ),
    );
  }
}
