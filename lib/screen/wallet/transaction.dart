import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/container.dart';
import '../../widgets/lists.dart';

class Transaction extends StatelessWidget {
  Transaction({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFAFAFA),
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: ThirdColor,
                ),
              ),
              Text(
                'Transaction History',
                style: TextStyle(color: ThirdColor),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
                color: ThirdColor,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return customcontainer(
                Date: Date[index],
                image: image[index],
                Price: Price[index],
                actiontype: actiontype[index],
                name: name[index]);
          }),
          itemCount: name.length,
        ),
      ),
    );
  }
}
