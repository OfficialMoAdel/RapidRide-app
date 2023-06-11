import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'coustom_button.dart';

import '../constants.dart';

class CustomDialog extends StatelessWidget {
  final String  header, massage;
  final String? imagePath;
  final String? buttonText;
  final VoidCallback? onButtonPressed;

  const CustomDialog({
    Key? key,
    this.imagePath,
    required this.header,
    required this.massage,
    this.buttonText,
    this.onButtonPressed,
  }) : super(key: key);

  dialogContent(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            if(imagePath!= null)
            SvgPicture.asset(
              height: 100,
              imagePath!,
              color: PrimaryColor,
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                header,
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 0,right: 0),
              child: Text(
                massage,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: CoustomButton(
                text: buttonText ??
                    'OK', // use the provided text, or 'OK' if none is provided
                onTap: onButtonPressed ??
                    () {}, // use the provided function, or an empty function if none is provided
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
