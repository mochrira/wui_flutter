import 'package:flutter/material.dart';

import 'colors.dart';
import 'typography.dart';

class WuiInputStyle {
  
  static InputBorder border(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 0.8,
        color: Theme.of(context).colorScheme.onSurface.withAlpha(50)
      ),
      borderRadius: BorderRadius.circular(8)
    );
  }

  static InputBorder focusedBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1.0,
        color: Theme.of(context).colorScheme.onSurface.withAlpha(200)
      ),
      borderRadius: BorderRadius.circular(8)
    );
  }

  static TextStyle labelTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: 14.0,
      color: Theme.of(context).colorScheme.onSurface,
      fontWeight: FontWeight.w500
    );
  }

  static TextStyle hintTextStyle(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).colorScheme.onSurface.withAlpha(150)
    );
  }

  static TextStyle style = WuiTypography.defaultTextStyle.copyWith(
    fontSize: 14.0
  );

  static TextStyle labelStyle = style.copyWith(
    color: WuiColors.inputLabelColor
  );

  static TextStyle floatingLabelStyle = labelStyle.copyWith(
    color: WuiColors.inputLabelColor
  );

  static TextStyle floatingLabelFocusedStyle = labelStyle.copyWith(
    color: WuiColors.primaryColor
  );

}