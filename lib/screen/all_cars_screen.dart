// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AllCars extends StatefulWidget {
  const AllCars({super.key});

  @override
  State<AllCars> createState() => _AllCarsState();
}

class _AllCarsState extends State<AllCars> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'All cars',
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

                // SingleChildScrollView(
                //   scrollDirection: Axis.vertical,
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           style: ElevatedButton.styleFrom(
                //                               backgroundColor: Colors.teal,
                //                               elevation: 5,
                //                               shadowColor: Colors.teal[50]),
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           Container(
                //             margin: EdgeInsets.all(10),
                //             width: size.width * .4,
                //             height: 210,
                //             padding: EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //                 color: Colors.grey[100],
                //                 borderRadius: BorderRadius.circular(10)),
                //             child: Center(
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Column(
                //                     children: [
                //                       Center(
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               'SEDAN',
                //                               style: TextStyle(
                //                                   fontSize: 18,
                //                                   color: Colors.teal,
                //                                   fontWeight: FontWeight.w600),
                //                             ),
                //                             Text(
                //                               '2019 Honda Civic Sedan',
                //                               style: TextStyle(fontSize: 10),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Container(
                //                         child: Image(
                //                           image: AssetImage(
                //                               "assets/images/2019-honda-civic-sedan.png"),
                //                           height: 85,
                //                           width: 150,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   Column(
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.start,
                //                         children: [
                //                           Text.rich(TextSpan(children: [
                //                             TextSpan(
                //                                 text: '200',
                //                                 style: TextStyle(
                //                                     color: Colors.amber[900],
                //                                     fontSize: 15,
                //                                     fontWeight:
                //                                         FontWeight.w600)),
                //                             TextSpan(
                //                                 text: ' PER DAY',
                //                                 style: TextStyle(
                //                                     color: Colors.grey[600],
                //                                     fontWeight: FontWeight.w600,
                //                                     fontSize: 10))
                //                           ])),
                //                         ],
                //                       ),
                //                       ElevatedButton.icon(
                //                           onPressed: () {},
                //                           icon: Icon(Icons.car_crash_sharp),
                //                           label: Text(
                //                             'BOOK NOW',
                //                             style: TextStyle(fontSize: 10),
                //                           ))
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
