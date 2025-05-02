import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wui_flutter/styles/input.dart';

class WuiTextField extends StatelessWidget {

  final TextStyle? textStyle;
  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
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
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsets? contentPadding;
  
  const WuiTextField({
    super.key, 
    this.textStyle,
    this.labelText, 
    this.hintText, 
    this.hintStyle,
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
    this.textAlign,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding
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
          style: TextStyle( fontFamily: "Inter", fontSize: 14 ).merge(this.textStyle),
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
            contentPadding: this.contentPadding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            hintStyle: WuiInputStyle.hintTextStyle(context).merge(this.hintStyle),
            enabledBorder: this.enabledBorder ?? WuiInputStyle.border(context),
            focusedBorder: this.focusedBorder ?? WuiInputStyle.focusedBorder(context),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix
          ),
        ),
      ],
    );
  }
}