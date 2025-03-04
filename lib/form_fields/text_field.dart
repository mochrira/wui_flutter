import 'package:flutter/material.dart';

import '../styles/input.dart';

class WuiTextField extends StatelessWidget {

  final String? labelText;
  final bool? obscureText;
  final TextEditingController? controller;

  const WuiTextField({super.key, this.labelText, this.obscureText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: WuiInputStyle.style,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: WuiInputStyle.labelStyle,
        floatingLabelStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
          if(states.contains(WidgetState.focused)) {
            return WuiInputStyle.floatingLabelFocusedStyle;
          }
          return WuiInputStyle.floatingLabelStyle;
        }),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: WuiInputStyle.border,
        enabledBorder: WuiInputStyle.border,
        focusedBorder: WuiInputStyle.focusedBorder,
        errorBorder: WuiInputStyle.focusedBorder,
        disabledBorder: WuiInputStyle.border
      ),
    );
  }
}