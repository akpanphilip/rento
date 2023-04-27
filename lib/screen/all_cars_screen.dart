import 'package:flutter/material.dart';

class AllCars extends StatefulWidget {
  const AllCars({super.key});

  @override
  State<AllCars> createState() => _AllCarsState();
}

class _AllCarsState extends State<AllCars> {
  @override
  Widget build(BuildContext context) {
      return const Scaffold(
      body: Center(
        child: Text('All Cars'),
      ),
    );
  }
}