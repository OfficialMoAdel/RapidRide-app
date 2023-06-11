import 'package:flutter/material.dart';
import 'package:taxi_app/constants.dart';

class CardActivated extends StatefulWidget {
  const CardActivated({Key? key}) : super(key: key);

  @override
  State<CardActivated> createState() => _CardActivatedState();
}

class _CardActivatedState extends State<CardActivated> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Card Activated successfully',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/image/check.png',
                width: 250,
                height: 250,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Active Another Card',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(
                        30), // adjust the radius to make the border more or less circular
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
