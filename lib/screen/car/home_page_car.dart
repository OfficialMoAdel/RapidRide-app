import 'package:flutter/material.dart';

import '../../widgets/digle.dart';

class HomepageCar extends StatelessWidget {
  const HomepageCar({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                showDialogFunc(context, 'assets/splash.png', 'jkjk', 'hjhjh');
              },
              child: Text('hi'))
        ],
      )),
    );
  }
}
