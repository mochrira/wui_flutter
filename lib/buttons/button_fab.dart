import 'package:flutter/material.dart';
import '../styles/colors.dart';

class WuiButtonFab extends StatelessWidget {

  final void Function() onPressed;
  final Widget? icon;

  const WuiButtonFab({super.key, required this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      backgroundColor: WuiColors.primaryColor,
      onPressed: onPressed, 
      child: icon != null ? IconTheme(
        data: IconThemeData(
          color: WuiColors.buttonPrimaryIconColor,
        ),
        child: icon!
      ) : null,
    );
  }
}