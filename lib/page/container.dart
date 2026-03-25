import 'package:flutter/material.dart';
import 'package:wui_flutter/wui_flutter.dart';

class WuiPageContainer extends StatelessWidget {

  final Widget child;
  final EdgeInsets? padding;

  const WuiPageContainer({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth;

      if(WuiResponsive.isBreakpointUp(context, WuiBreakpoint.xxl)) {
        maxWidth = 1320;
      } else if(WuiResponsive.isBreakpointUp(context, WuiBreakpoint.xl)) {
        maxWidth = 1140;
      } else if(WuiResponsive.isBreakpointUp(context, WuiBreakpoint.lg)) {
        maxWidth = 960;
      } else if(WuiResponsive.isBreakpointUp(context, WuiBreakpoint.md)) {
        maxWidth = 720;
      } else if(WuiResponsive.isBreakpointUp(context, WuiBreakpoint.sm)) {
        maxWidth = 540;
      } else {
        maxWidth = constraints.maxWidth;
      }

      return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
              child: child
            )
          )
        ),
      );
    });
  }
}