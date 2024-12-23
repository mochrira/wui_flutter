import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

var wuiDefaultTextStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w400,
  color: wuiDefaultTextColor
);

var wuiDrawerHeaderTitleStyle = wuiDefaultTextStyle.copyWith(
  fontWeight: FontWeight.w500
);

var wuiDrawerHeaderSubTitleStyle = wuiDefaultTextStyle.copyWith(
  fontSize: 12
);