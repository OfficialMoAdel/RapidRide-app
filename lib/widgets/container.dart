import 'package:flutter/material.dart';

import '../constants.dart';

class customcontainer extends StatelessWidget {
  customcontainer(
      {required this.Date,
      required this.image,
      required this.Price,
      required this.actiontype,
      required this.name});
  String image, Price, actiontype, Date, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: Container(
        width: double.infinity,
        child: Row(children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: ktherdColor),
                    ),
                    Text(
                      Date,
                      style: TextStyle(color: ktherdColor),
                    ),
                  ]),
              SizedBox(
                width: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '£$Price',
                    style: TextStyle(color: ktherdColor),
                  ),
                  Row(
                    children: [
                      Text(
                        '${actiontype} ',
                        style: TextStyle(color: ktherdColor),
                      ),
                      Container(
                        color:
                            actiontype != 'Top Up' ? Colors.red : Colors.blue,
                        child: Icon(
                          actiontype != 'Top Up'
                              ? Icons.arrow_downward_outlined
                              : Icons.arrow_upward_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    ); // This trailing comm
  }
}