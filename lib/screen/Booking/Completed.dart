import 'package:flutter/material.dart';

import '../../constants.dart';
import 'booking_page.dart';

class Completed extends StatefulWidget {
  const Completed({super.key});

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
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
                    title: 'Warren Wade',
                    subtitle: 'Honda Mobilio',
                    imageUrl:
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80',
                    activeText: 'Completed',
                    activeColor: GraanColor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  CustomCard(
                    title: 'Wade Warren',
                    subtitle: 'Honda Mobilio',
                    imageUrl:
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                    activeText: 'Completed',
                    activeColor: GraanColor,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
