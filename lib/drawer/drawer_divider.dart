import 'package:flutter/material.dart';

class WuiDrawerDivider extends StatelessWidget {

  final Widget? child;

  const WuiDrawerDivider({ super.key, this.child });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
      child: DefaultTextStyle(
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          fontWeight: FontWeight.w600,
          fontSize: 11.0
        ),
        child: child ?? const SizedBox()
      )
    );
  }
}