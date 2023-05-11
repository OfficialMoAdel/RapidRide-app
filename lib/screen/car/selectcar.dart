import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'payment_page.dart';
import '../../widgets/custom-text_filed.dart';
import '../../widgets/halper_app.dart';
import '../item_list.dart';
import '../../widgets/coustom_button.dart';
import '../../constants.dart';

class carselectscreen extends StatelessWidget {
  carselectscreen({super.key});
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GestureDetector(
            child: SvgPicture.asset('assets/icon/Arrow - Left.svg'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
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
                height: 95,
              ),
              Text("Select the vehicle you want to ride."),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => itemList(),
                itemCount: 3,
              ),
              Divider(
                color: ScandryColor,
                indent: 5,
                endIndent: 5,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Promo Code',
                  style: TextStyle(
                      color: ThirdColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomTextFiled(
                        hintText: "Enter Promo code",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
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
              ),
              Container(
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
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
                      SizedBox(
                        height: 18,
                      ),
                      CoustomButton(
                        text: 'Continue',
                        onTap: () {
                          context.push(new PaymentPage());
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
