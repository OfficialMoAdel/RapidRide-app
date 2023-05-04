import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({this.hinttext, this.onchange, this.isobscure = false});
  String? hinttext;
  Function(String)? onchange;
  bool? isobscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is require!';
          }
        },
        onChanged: onchange,
        obscureText: isobscure!,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
