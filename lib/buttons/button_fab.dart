import 'package:flutter/material.dart';

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
      onPressed: onPressed, 
      child: icon != null ? IconTheme(
        data: IconThemeData(
          color: Theme.of(context).primaryColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        ),
        child: icon!
      ) : null,
    );
  }
}