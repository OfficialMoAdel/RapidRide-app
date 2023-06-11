import 'package:flutter/material.dart';

import '../../constants.dart';
import 'booking_page.dart';

class ActiveNow extends StatefulWidget {
  const ActiveNow({Key? key}) : super(key: key);

  @override
  State<ActiveNow> createState() => _ActiveNowState();
}

class _ActiveNowState extends State<ActiveNow> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffafafa),
        body: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
              child: Column(
                children: [
                  CustomCard(
                    title: 'Wade Warren',
                    subtitle: 'Honda Mobilio',
                    imageUrl:
                        'https://images.unsplash.com/photo-1521146764736-56c929d59c83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80',
                    activeText: 'Active',
                    activeColor: PrimaryColor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
