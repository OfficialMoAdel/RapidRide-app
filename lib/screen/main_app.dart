import 'package:flutter/material.dart';
import 'bus/main_page_bus.dart';
import 'car/main_page_car.dart';
import '../widgets/coustom_butoon.dart';
import '../constants.dart';

class MianApp extends StatelessWidget {
  const MianApp({super.key});
  static String id = 'MianApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "Choose of transportation",
          textAlign: TextAlign.center,
          style: TextStyle(color: ktherdColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CoustomButoon(
                text: 'Car',
                onTap: () => {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MainPagecar(),
                    ),
                  )
                },
              ),
              CoustomButoon(
                text: 'Bus',
                onTap: () => {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MainPageBus(),
                    ),
                  )
                },
              ),
              CoustomButoon(
                text: 'MicroBus',
                onTap: () => {
                  /* Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MainPageBus(),
                    ),
                  ) */
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
