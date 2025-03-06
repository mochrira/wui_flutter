import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/buttons.dart';

class WuiButton extends StatelessWidget {

  final Widget? child;
  final ButtonStyle? style;
  final WuiButtonSize? size;
  final void Function() onPressed;

  const WuiButton({super.key, required this.onPressed, this.style, this.child, this.size});

  WidgetStatePropertyAll<EdgeInsets> _getPadding() {
    if(size == WuiButtonSize.large) {
      return const WidgetStatePropertyAll(EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 24
      ));
    }

    if(size == WuiButtonSize.small) {
      return const WidgetStatePropertyAll(EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16
      ));
    }

    return const WidgetStatePropertyAll(EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: WuiButtonStyle.base().merge(style).copyWith(
        padding: _getPadding()
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}