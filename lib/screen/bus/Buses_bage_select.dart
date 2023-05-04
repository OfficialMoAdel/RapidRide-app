import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BusesPageSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined),
        ),
        title: Text('Buses'),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.menu_outlined),
            onPressed: () {
              print('open menu');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              color: kScandryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: ktherdColor,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text('19 - Feb - 2023'),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    color: ktherdColor,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.only(
                                  top: 5, bottom: 5, start: 15, end: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kPrimaryColor),
                              child: Text(
                                'QIBus Travels',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Seater',
                              style: TextStyle(
                                color: kScandryColor,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        color: kScandryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1:00',
                                    style: TextStyle(color: ktherdColor),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 5, bottom: 5, start: 20, end: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Text(
                                      '8:00',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      endIndent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '8:00',
                                    style: TextStyle(color: ktherdColor),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AM',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    'PM',
                                    style: TextStyle(
                                      color: kScandryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: kScandryColor, fontSize: 15),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.only(
                                  top: 5, bottom: 5, start: 15, end: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: kPrimaryColor),
                              child: Text(
                                'QiBus Travels',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Seater',
                              style: TextStyle(
                                color: kScandryColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        color: kScandryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1:00',
                                    style: TextStyle(color: ktherdColor),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 5, bottom: 5, start: 20, end: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Text(
                                      '8:00',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      endIndent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '8:00',
                                    style: TextStyle(color: ktherdColor),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AM',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    'PM',
                                    style: TextStyle(
                                      color: kScandryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: kScandryColor, fontSize: 15),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.only(
                                  top: 5, bottom: 5, start: 15, end: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kPrimaryColor),
                              child: Text(
                                'QIBus Travels',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Seater',
                              style: TextStyle(
                                color: kScandryColor,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        color: kScandryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1:00',
                                    style: TextStyle(color: ktherdColor),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 5, bottom: 5, start: 20, end: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Text(
                                      '8:00',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      endIndent: 50,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '8:00',
                                    style: TextStyle(color: ktherdColor),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AM',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(color: kScandryColor),
                                  ),
                                  Text(
                                    'PM',
                                    style: TextStyle(
                                      color: kScandryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: kScandryColor, fontSize: 15),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
