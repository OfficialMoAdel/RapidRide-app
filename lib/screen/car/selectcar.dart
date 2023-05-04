import 'package:flutter/material.dart';
import '../Textfeild.dart';
import '../item_list.dart';
import '../../widgets/coustom_butoon.dart';

import '../../constants.dart';

class carselectscreen extends StatelessWidget {
  carselectscreen({super.key});
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: ktherdColor,
        ),
        title: Text(
          'Select Car',
          style: TextStyle(color: ktherdColor, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text("Select the vehicle you want to ride."),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => itemList(),
                itemCount: 3,
              ),
              Divider(
                color: Colors.grey,
                indent: 5,
                endIndent: 5,
                thickness: 1,
              ),
              Text(
                'Promo Code',
                style: TextStyle(
                    color: ktherdColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: customTextField(
                        hinttext: 'Enter Promo code',
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.lime,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey.shade100),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('4.5 Km'),
                              Text('4 mins'),
                              Text(r'$20.00')
                            ],
                          ),
                        ),
                      ),
                      CoustomButoon(
                        text: 'Continue',
                        onTap: () {},
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
