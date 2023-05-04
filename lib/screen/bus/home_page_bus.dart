import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Buses_bage_select.dart';
import '../../constants.dart';

class HomePageBus extends StatefulWidget {
  static String id = 'HomePageBus';

  @override
  State<HomePageBus> createState() => _HomePageBusState();
}

class _HomePageBusState extends State<HomePageBus> {
  DateTime date = DateTime.now();

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              'Home',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.add_alert),
            onPressed: () {
              print('open menu');
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    color: kPrimaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: 'From City',
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 1)),
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: 'To City',
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 1)),
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  /* Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Ac',
                                        style: TextStyle(
                                            color: kScandryColor , fontSize: 15),
                                      ),
                                      Text(
                                        'NoN-Ac',
                                        style: TextStyle(
                                            color: kScandryColor , fontSize: 15),
                                      ),
                                      Text(
                                        'SLEEPER',
                                        style: TextStyle(
                                            color: kScandryColor , fontSize: 15),
                                      ),
                                      Text(
                                        'SEATER',
                                        style: TextStyle(
                                            color: kScandryColor , fontSize: 15),
                                      ),
                                    ],
                                  ) */
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Card(
                              child: Container(
                                width: 250,
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'when you want to go?',
                                      style: TextStyle(
                                          color: kScandryColor, fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextField(
                                      controller: dateController,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(
                                          Icons.calendar_today_rounded,
                                          color: kScandryColor,
                                        ),
                                        //  labelText: 'Enter Date',
                                      ),
                                      readOnly: true,
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2000),
                                                lastDate: DateTime(2100));
                                        if (pickedDate != null) {
                                          String formattedDate =
                                              DateFormat("yyyy-MM-dd")
                                                  .format(pickedDate);

                                          setState(() {
                                            dateController.text =
                                                formattedDate.toString();
                                          });
                                        } else {
                                          print("Not selected");
                                        }
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                height: 80,
                                // color: kPrimaryColor,
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Icon(Icons.search),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) =>
                                            new BusesPageSelect(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              'Recent Search',
                              style:
                                  TextStyle(color: kScandryColor, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                elevation: 2,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_car_sharp,
                                            size: 25,
                                            color: kPrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: kScandryColor,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '23_01_2023',
                                        style: TextStyle(
                                            color: kScandryColor, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: double.infinity,
                                        child: MaterialButton(
                                          color: kPrimaryColor,
                                          onPressed: () {},
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 2,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_car_sharp,
                                            size: 25,
                                            color: kPrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: kScandryColor,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '11_12_2023',
                                        style: TextStyle(
                                            color: kScandryColor, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: double.infinity,
                                        child: MaterialButton(
                                          color: kPrimaryColor,
                                          onPressed: () {},
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 2,
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_car_sharp,
                                            size: 25,
                                            color: kPrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: kScandryColor,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '09_11_2023',
                                        style: TextStyle(
                                            color: kScandryColor, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                        width: double.infinity,
                                        child: MaterialButton(
                                          color: kPrimaryColor,
                                          onPressed: () {},
                                          child: Text(
                                            'Book Now',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'New Offers',
                                    style: TextStyle(
                                        color: kScandryColor, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Card(
                                    child: Container(
                                      height: 100,
                                      width: 250,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(13),
                                            topRight: Radius.circular(13)),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://tse2.mm.bing.net/th?id=OIP.uKVkHLtqaYJemg7x7lUX2AHaFc&pid=Api&P=0'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                        color: kScandryColor, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Card(
                                    child: Container(
                                      height: 100,
                                      width: 250,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(13),
                                            topRight: Radius.circular(13)),
                                        child: Image(
                                          image: NetworkImage(
                                              'https://tse2.mm.bing.net/th?id=OIP.uKVkHLtqaYJemg7x7lUX2AHaFc&pid=Api&P=0'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
