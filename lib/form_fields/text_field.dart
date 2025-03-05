import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/input.dart';

class WuiTextField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final Icon? suffixIcon;

  const WuiTextField({super.key, this.labelText, this.hintText, this.obscureText, this.controller, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(labelText != null) Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(labelText!, style: WuiInputStyle.labelTextStyle(context)),
        ),
        TextField(
          controller: controller,
          style: const TextStyle( fontFamily: "Inter", fontSize: 14 ),
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            hintStyle: WuiInputStyle.hintTextStyle(context),
            enabledBorder: WuiInputStyle.border(context),
            focusedBorder: WuiInputStyle.focusedBorder(context),
            suffixIcon: suffixIcon
          ),
        ),
      ],
    );
  }
}