import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/buttons.dart';

class WuiButton extends StatelessWidget {

  final Widget? child;
  final ButtonStyle? style;
  final WuiButtonSize? size;
  final WuiButtonWidth? width;
  final void Function() onPressed;

  const WuiButton({super.key, required this.onPressed, this.style, this.child, this.size, this.width});

  WuiButtonWidth get calculatedWidth => width ?? WuiButtonWidth.shrink;

  WidgetStatePropertyAll<EdgeInsets> _getPadding() {
    if(size == WuiButtonSize.large) {
      return const WidgetStatePropertyAll(EdgeInsets.symmetric(
        horizontal: 24
      ));
    }

    if(size == WuiButtonSize.small) {
      return const WidgetStatePropertyAll(EdgeInsets.symmetric(
        horizontal: 16
      ));
    }

    return const WidgetStatePropertyAll(EdgeInsets.symmetric(
      horizontal: 20
    ));
  }

  WidgetStatePropertyAll<Size> _getSize() {
    if(size == WuiButtonSize.large) {
      return WidgetStatePropertyAll(Size(
        calculatedWidth == WuiButtonWidth.shrink ? double.minPositive : double.infinity, 56
      ));
    }

    if(size == WuiButtonSize.small) {
      return WidgetStatePropertyAll(Size(
        calculatedWidth == WuiButtonWidth.shrink ? double.minPositive : double.infinity, 40
      ));
    }

    return WidgetStatePropertyAll(Size(
      calculatedWidth == WuiButtonWidth.shrink ? double.minPositive : double.infinity, 48
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: WuiButtonStyle.base().merge(style).copyWith(
        padding: _getPadding(),
        minimumSize: _getSize()
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}