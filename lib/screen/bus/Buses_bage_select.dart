import 'package:flutter/material.dart';
import 'package:taxi_app/screen/bus/AddressDirectionPagebus.dart';
import '../../constants.dart';

class BusesPageSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            () => Navigator.of(context).pop();
          },
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
              color: ScandryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: ThirdColor,
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
                    color: ThirdColor,
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new AddressDirectionPageBus()));
              },
              child: Expanded(
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
                                    color: PrimaryColor),
                                child: Text(
                                  'QIBus Travels',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                              Text(
                                'Seater',
                                style: TextStyle(
                                  color: ScandryColor,
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
                                          color: ScandryColor,
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
                                      style: TextStyle(color: ThirdColor),
                                    ),
                                    Flexible(
                                      child: Divider(
                                        height: 20,
                                        thickness: 1,
                                        indent: 50,
                                        color: PrimaryColor,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 5,
                                          bottom: 5,
                                          start: 20,
                                          end: 20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: PrimaryColor),
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
                                        color: PrimaryColor,
                                      ),
                                    ),
                                    Text(
                                      '8:00',
                                      style: TextStyle(color: ThirdColor),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'AM',
                                      style: TextStyle(color: ScandryColor),
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(color: ScandryColor),
                                    ),
                                    Text(
                                      'PM',
                                      style: TextStyle(
                                        color: ScandryColor,
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
                                      color: ScandryColor, fontSize: 15),
                                ),
                                Text(
                                  '50',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: PrimaryColor),
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
                                  color: PrimaryColor),
                              child: Text(
                                'QiBus Travels',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Seater',
                              style: TextStyle(
                                color: ScandryColor,
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
                                        color: ScandryColor,
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
                                    style: TextStyle(color: ThirdColor),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 50,
                                      color: PrimaryColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 5, bottom: 5, start: 20, end: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: PrimaryColor),
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
                                      color: PrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '8:00',
                                    style: TextStyle(color: ThirdColor),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AM',
                                    style: TextStyle(color: ScandryColor),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(color: ScandryColor),
                                  ),
                                  Text(
                                    'PM',
                                    style: TextStyle(
                                      color: ScandryColor,
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
                                    color: ScandryColor, fontSize: 15),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: PrimaryColor),
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
                                  color: PrimaryColor),
                              child: Text(
                                'QIBus Travels',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Seater',
                              style: TextStyle(
                                color: ScandryColor,
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
                                        color: ScandryColor,
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
                                    style: TextStyle(color: ThirdColor),
                                  ),
                                  Flexible(
                                    child: Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 50,
                                      color: PrimaryColor,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 5, bottom: 5, start: 20, end: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: PrimaryColor),
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
                                      color: PrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '8:00',
                                    style: TextStyle(color: ThirdColor),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AM',
                                    style: TextStyle(color: ScandryColor),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(color: ScandryColor),
                                  ),
                                  Text(
                                    'PM',
                                    style: TextStyle(
                                      color: ScandryColor,
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
                                    color: ScandryColor, fontSize: 15),
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: PrimaryColor),
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
