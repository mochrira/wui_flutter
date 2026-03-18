import 'package:flutter/material.dart';

const Map<String, double> wuiBreakpoints = {
  "sm" : 576,
  "md" : 768,
  "lg" : 992,
  "xl" : 1200,
  "xxl" : 1400
};

enum WuiBreakpoint {
  sm,
  md,
  lg,
  xl,
  xxl
}

class WuiResponsive {

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isBreakpointUp(BuildContext context, WuiBreakpoint breakpoint) {
    return MediaQuery.of(context).size.width > wuiBreakpoints[breakpoint.name]!;
  }

}