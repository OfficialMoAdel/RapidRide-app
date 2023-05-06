import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {this.sufixI,
      this.icon,
      this.hintText,
      this.onChanged,
      this.obscureText = false});
  String? hintText;
  bool? obscureText;
  SvgPicture? icon, sufixI;
  Function(String)? onChanged;
  // FocusNode fieldNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: fieldNode,
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Filed is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: ScandryColor.withOpacity(.05),
        prefixIcon: icon,

        // SvgPicture.asset(
        //   "assets/icon/Hide.svg",
        //   color: fieldNode.hasFocus
        //       ? Theme.of(context).primaryColor
        //       : Colors.purple,
        // ),
        //suffixIcon: (sufixI),

        /// Icon(
        ///   Icons.visibility,
        ///   color: kScandryColor,
        //),
        hintText: hintText,
        hintStyle: TextStyle(color: ScandryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: ScandryColor.withOpacity(0.05)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: PrimaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
