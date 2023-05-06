import 'package:flutter/material.dart';
import 'package:taxi_app/screen/payment_page.dart';
import 'package:taxi_app/widgets/custom-text_filed.dart';
import '../item_list.dart';
import '../../widgets/coustom_button.dart';

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
          color: ThirdColor,
        ),
        title: Text(
          'Select Car',
          style: TextStyle(color: ThirdColor, fontSize: 18),
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
                    color: ThirdColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomTextFiled(
                        hintText: "Enter Promo code",
                      )),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: PrimaryColor,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
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
                      CoustomButton(
                        text: 'Continue',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new PaymentPage()));
                        },
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
