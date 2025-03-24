import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wui_flutter/styles/input.dart';

class WuiTextField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final Widget? suffix;
  final TextAlign? textAlign;
  
  const WuiTextField({
    super.key, 
    this.labelText, 
    this.hintText, 
    this.obscureText, 
    this.controller, 
    this.prefixIcon,
    this.suffixIcon, 
    this.keyboardType, 
    this.inputFormatters, 
    this.focusNode, 
    this.onTap,
    this.onChanged,
    this.suffix,
    this.textAlign
  });

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
          inputFormatters: inputFormatters,
          focusNode: focusNode,
          onTap: onTap,
          onChanged: onChanged,
          textAlign: textAlign ?? TextAlign.left,
          decoration: InputDecoration(
            hintText: hintText,
            isDense: false,
            constraints: BoxConstraints.tight(const Size.fromHeight(48)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            hintStyle: WuiInputStyle.hintTextStyle(context),
            enabledBorder: WuiInputStyle.border(context),
            focusedBorder: WuiInputStyle.focusedBorder(context),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix
          ),
        ),
      ],
    );
  }
}