import 'package:flutter/material.dart';
import 'package:taxi_app/screen/wallet/Card_Mangement.dart';
import '../widgets/halper_app.dart';
import 'bus/main_page_bus.dart';
import 'car/main_page_car.dart';
import '../widgets/coustom_button.dart';
import '../constants.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static String id = 'MianApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "Choose of transportation",
          textAlign: TextAlign.center,
          style: TextStyle(color: ThirdColor),
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
              CoustomButton(
                text: 'Car',
                onTap: () => {context.push(new MainPagecar())},
              ),
              CoustomButton(
                text: 'Bus',
                onTap: () => {context.push(new MainPageBus())},
              ),
              CoustomButton(
                text: 'MicroBus',
                onTap: () => {
                  // context.push(new MainPageBus())
                },
              ),
              CoustomButton(
                text: 'Card Mangment',
                onTap: () => {
                  {context.push(new CardMangement())}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
