import 'package:flutter/material.dart';
import '../../constants.dart';
import 'booking_page.dart';

class Cancelled extends StatefulWidget {
  const Cancelled({super.key});

  @override
  State<Cancelled> createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
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
                        'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=986&q=80',
                    activeText: 'Cancelled',
                    activeColor: RadColor,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  CustomCard(
                    title: 'Wade Warren',
                    subtitle: 'Honda Mobilio',
                    imageUrl:
                        'https://images.unsplash.com/photo-1507101105822-7472b28e22ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1773&q=80',
                    activeText: 'Cancelled',
                    activeColor: RadColor,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
