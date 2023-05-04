import 'dart:async';

import 'package:flutter/material.dart';

import '../car/home_page_car.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'Splash';

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, HomepageCar.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Image(
            image: AssetImage('assets/splash.png'),
            width: width * 0.3,
            height: width * 0.3),
      ),
    );
  }
}
