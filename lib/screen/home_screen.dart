// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:rento/models/cars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    Size size = MediaQuery.of(context).size;

    List<Car> _carList = Car.carList;

    List<String> _carTypes = [
      'Sedan',
      'Coupe',
      'Sports Car',
      'Station Wagon',
      'Hatch Back',
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Browse cars',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Icon(
                Icons.segment,
                size: 20,
                color: Colors.grey,
              )
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: size.width * .9,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                            ),
                            Expanded(
                                child: TextField(
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              showCursor: false,
                              decoration: InputDecoration(
                                  hintText: 'Search Car',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            )),
                            Icon(
                              Icons.mic_rounded,
                              color: Colors.black,
                              size: 18,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(129, 245, 245, 245),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  child: Container(
                    height: 40,
                    width: size.width * .9,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _carTypes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Text(
                                  _carTypes[index],
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: selectedIndex == index
                                          ? Colors.black
                                          : Colors.grey[300]),
                                ),
                              ));
                        }),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hot Deals'),
                      Text('See All'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 260,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEDAN',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2019 Honda Civic Sedan',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/2019-honda-civic-sedan.png"),
                                  height: 120,
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                height: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 15,
                                      left: 20,
                                      child: Text(
                                        "Details",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(18.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  Colors.yellow[800]),
                                          onPressed: () {},
                                          icon: Icon(Icons.car_crash_sharp),
                                          label: Text(
                                            'Rent now',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 260,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEDAN',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2019 Honda Civic Sedan',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/2019-honda-civic-sedan.png"),
                                  height: 120,
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                height: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 15,
                                      left: 20,
                                      child: Text(
                                        "Details",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(18.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  Colors.yellow[800]),
                                          onPressed: () {},
                                          icon: Icon(Icons.car_crash_sharp),
                                          label: Text(
                                            'Rent now',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(10),
                          width: 260,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEDAN',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2019 Honda Civic Sedan',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.favorite_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/2019-honda-civic-sedan.png"),
                                  height: 120,
                                  width: double.infinity,
                                ),
                              ),
                              Container(
                                height: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 15,
                                      left: 20,
                                      child: Text(
                                        "Details",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(18.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  Colors.yellow[800]),
                                          onPressed: () {},
                                          icon: Icon(Icons.car_crash_sharp),
                                          label: Text(
                                            'Rent now',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Top Rated'),
                      Text('See All'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 1,
                        height: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEDAN',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2019 Honda Civic Sedan',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: '200',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  )),
                                              TextSpan(
                                                  text: ' PER DAY',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7))
                                            ])),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/2019-honda-civic-sedan.png"),
                                      height: 130,
                                      width: 150,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(18.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  Colors.yellow[800]),
                                          onPressed: () {},
                                          icon: Icon(Icons.car_crash_sharp),
                                          label: Text(
                                            'Rent now',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 1,
                        height: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SEDAN',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue[900],
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '2019 Honda Civic Sedan',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                  text: '200',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  )),
                                              TextSpan(
                                                  text: ' PER DAY',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7))
                                            ])),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/2019-honda-civic-sedan.png"),
                                      height: 130,
                                      width: 150,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 30, vertical: 20),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight: Radius.circular(0),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(18.0),
                                                ),
                                              ),
                                              backgroundColor:
                                                  Colors.yellow[800]),
                                          onPressed: () {},
                                          icon: Icon(Icons.car_crash_sharp),
                                          label: Text(
                                            'Rent now',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// child: ListView.builder(
//     itemCount: _carTypes.length,
//     itemBuilder: (context, index) {
//       return Card(
//         margin: const EdgeInsets.symmetric(
//             vertical: 5, horizontal: 15),
//         child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Text(_carTypes[index])),
//       );
//     }),