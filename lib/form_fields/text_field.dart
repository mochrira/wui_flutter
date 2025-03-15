import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/input.dart';

class WuiTextField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;

  const WuiTextField({super.key, this.labelText, this.hintText, this.obscureText, this.controller, this.suffixIcon, this.keyboardType});

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
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            isDense: false,
            constraints: BoxConstraints.tight(const Size.fromHeight(48)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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