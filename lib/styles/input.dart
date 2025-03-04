import 'package:flutter/material.dart';

import 'colors.dart';
import 'typography.dart';

class WuiInputStyle {
  
  static InputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: WuiColors.inputBorderColor,
      width: 1
    ),
    borderRadius: BorderRadius.circular(4)
  );

  static InputBorder focusedBorder = border.copyWith(
    borderSide: border.borderSide.copyWith(
      color: WuiColors.primaryColor
    )
  );

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