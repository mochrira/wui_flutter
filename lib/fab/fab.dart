import 'package:flutter/material.dart';

class WuiFab extends StatelessWidget {

  final void Function()? onPressed;
  final Widget? child;

  const WuiFab({super.key, this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: IconTheme(
        data: const IconThemeData(
          color: Colors.white
        ), 
        child: child ?? const Placeholder()
      )
    );
  }
}