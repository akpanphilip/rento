// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rento/screen/forgot_password_screen.dart';
import 'package:rento/screen/root_screen.dart';

import 'register_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        // wrap with singlechildview
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login to your account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            CustomTextField(
              obscureText: false,
              hintText: 'Username',
              // icon: Icons.email_rounded,
            ),
            SizedBox(height: 10),
            CustomTextField(
              obscureText: true,
              hintText: 'Password',
              // icon: Icons.lock_rounded,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const ForgotPassword(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Forgot Password?',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: ' Reset Here',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600))
                ])),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('OR'),
                ),
                Expanded(child: Divider())
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Icon(Icons.g_mobiledata_sharp),
                  Text('Sign In with Google')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const Register(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: ' Register',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600))
                ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  // final IconData icon;
  final bool obscureText;
  final String hintText;

  const CustomTextField({
    super.key,
    // required this.icon,
    required this.obscureText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          // prefixIcon: Icon(icon, color: Colors.black),
          hintText: hintText),
    );
  }
}
