import 'package:flutter/material.dart';
import 'package:taxi_app/widgets/coustom_butoon.dart';

import '../constants.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(color: ThirdColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton('My Wallet', Icons.account_balance_wallet),
            _buildButton('PayPal Payment', Icons.paypal),
            _buildButton('Google Pay payment', Icons.g_mobiledata),
            _buildButton('Apple Pay payment', Icons.apple),
            _buildButton('MasterCard payment', Icons.card_travel),
            _buildButton('Cash Money symbol', Icons.attach_money),
            SizedBox(height: 20),
            CoustomButoon(
              text: "Continue",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new PaymentPage()));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, IconData icon) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () {
          //TODO: Add functionality for the payment button
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        icon: Icon(
          icon,
          size: 24,
          color: PrimaryColor,
        ),
        label: Text(
          text,
          style: TextStyle(fontSize: 18, color: ThirdColor),
        ),
      ),
    );
  }
}
