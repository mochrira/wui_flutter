import 'package:flutter/material.dart';

import '../styles/buttons.dart';

class WuiButton extends StatelessWidget {

  final Widget? child;
  final ButtonStyle? style;
  final void Function() onPressed;

  const WuiButton({super.key, required this.onPressed, this.style, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style ?? WuiButtonDefault.normal,
      onPressed: onPressed,
      child: child,
    );
  }
}