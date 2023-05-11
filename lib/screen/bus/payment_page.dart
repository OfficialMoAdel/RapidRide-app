import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_app/screen/car/DirectionPage.dart';
import 'package:taxi_app/widgets/halper_app.dart';
import '../../constants.dart';
import '../../widgets/coustom_button.dart';

class PaymentPageBuse extends StatefulWidget {
  const PaymentPageBuse({Key? key}) : super(key: key);

  @override
  _PaymentPageBuseState createState() => _PaymentPageBuseState();
}

class _PaymentPageBuseState extends State<PaymentPageBuse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
            _buildButton('Cash Money symbol', Icons.attach_money),
            _buildButton('PayPal Payment', Icons.paypal),
            _buildButton('Google Pay payment', Icons.g_mobiledata),
            _buildButton('Apple Pay payment', Icons.apple),
            _buildButton('MasterCard payment', Icons.card_travel),
            SizedBox(height: 20),
            CoustomButton(
              text: "Continue",
              onTap: () {
                context.push(new DirectionPage());
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () {
          context.push(new DirectionPage());
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
