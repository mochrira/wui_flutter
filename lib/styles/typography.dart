import 'package:flutter/material.dart';

import 'colors.dart';

class WuiTypography {

  static TextStyle defaultTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: WuiColors.textColor
  );

  static TextStyle drawerHeaderTitleStyle = defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 1.5
  );

  static TextStyle drawerHeaderSubTitleStyle = defaultTextStyle.copyWith(
    height: 1.5
  );

  static TextStyle drawerDividerTextStyle = defaultTextStyle.copyWith(
    color: Colors.black54,
    fontWeight: FontWeight.w700,
    fontSize: 12
  );

  static TextStyle drawerButtonTextStyle = defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500
  );

}

