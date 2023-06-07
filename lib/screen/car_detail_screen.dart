// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarDetail extends StatefulWidget {
  const CarDetail({super.key});

  @override
  State<CarDetail> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: AppBar(
        // title: Text('2019 Honda Civic Sedan'),
        backgroundColor: Colors.yellow[800],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2019 Honda Civic Sedan",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "SEDAN",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(
                          "assets/images/2019-honda-civic-sedan.png"),
                      height: 180,
                      width: double.infinity,
                    ),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                        "This is a random description of the car. You can rent and if you discover a problem na you sabi. Meanwhile it is durable and highly efficient. Not really sure of what to type again but i have to end it yet with a believe that this text written are enough description."),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Specification",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Specification(
                        icon: Icons.speed,
                        text: '200km/hr',
                      ),
                      Specification(
                        icon: Icons.local_gas_station,
                        text: 'Gas',
                      ),
                      Specification(
                        icon: Icons.build,
                        text: 'Automatic',
                      ),
                      Specification(
                        icon: Icons.flight_class,
                        text: '4',
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Book now'),
                            SizedBox(width: 15),
                            Icon(Icons.calendar_month)
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Specification extends StatelessWidget {
  final IconData icon;
  final String text;

  const Specification({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.black),
          Text(
            text,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
