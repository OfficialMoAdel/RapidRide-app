import 'package:flutter/material.dart';

itemList() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 18.0),
    child: Row(
      children: [
        CircleAvatar(
          child: Icon(Icons.person),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'Subtitle',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 16.0),
        Text(
          '\$10.00',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(width: 4.0),
        Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
            color: true ? Colors.blue : Colors.transparent,
          ),
          child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.check,
                size: 18.0,
                color: Colors.white,
              )),
        ),
      ],
    ),
  );
}
