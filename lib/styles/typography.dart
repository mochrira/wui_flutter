import 'package:flutter/material.dart';

import 'colors.dart';

class WuiTypography {

  static get defaultTextStyle => const TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400
  );

  static get drawerHeaderTitleStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.5
  );

  static get drawerHeaderSubTitleStyle => defaultTextStyle.copyWith(
    height: 1.5
  );

  static get drawerDividerTextStyle => defaultTextStyle.copyWith(
    color: Colors.black54,
    fontWeight: FontWeight.w700,
    fontSize: 12.0
  );

  static get drawerButtonTextStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500
  );

  static get sliverTitleTextStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: 32.0
  );

  static get sliverSubTitleTextStyle => defaultTextStyle;

  static get listTileTitleStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    height: 1.15
  );

  static get listTileSubTitleStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.normal,
    height: 1.375
  );

  static get sheetTitleStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 1.5
  );

  static get buttonTextStyle => defaultTextStyle.copyWith(
    fontWeight: FontWeight.w500
  );

}

