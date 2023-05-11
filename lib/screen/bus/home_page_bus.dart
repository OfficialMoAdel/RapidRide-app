import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:taxi_app/widgets/custom-text_filed.dart';
import '../../widgets/halper_app.dart';
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
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GestureDetector(
            child: SvgPicture.asset('assets/icon/Arrow - Left.svg'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: PrimaryColor,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              'Home',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: ThirdColor),
            ),
          ],
        ),
        actions: [
          SvgPicture.asset(
            'assets/icon/Notification.svg',
          ),
          SizedBox(
            width: 12,
          )
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
                    color: PrimaryColor,
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
                                  CustomTextFiled(
                                    hintText: 'From City',
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  CustomTextFiled(
                                    hintText: 'To City',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
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
                                          color: ScandryColor, fontSize: 18),
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
                                          color: ScandryColor,
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
                              width: 12,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: PrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                height: 80,
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Icon(Icons.search),
                                  onPressed: () {
                                    context.push(new BusesPageSelect());
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Recent Search',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: ScandryColor, fontSize: 18),
                          ),
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
                                            color: PrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: ScandryColor,
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
                                            color: ScandryColor, fontSize: 18),
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
                                          color: PrimaryColor,
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
                                            color: PrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: ScandryColor,
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
                                            color: ScandryColor, fontSize: 18),
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
                                          color: PrimaryColor,
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
                                            color: PrimaryColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Text(
                                            'Elmansoura To Elmahalla',
                                            style: TextStyle(
                                                color: ScandryColor,
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
                                            color: ScandryColor, fontSize: 18),
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
                                          color: PrimaryColor,
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
                          height: 15,
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
                                        color: ScandryColor, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
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
                                        color: ScandryColor, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 12,
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
