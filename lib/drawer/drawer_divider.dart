import 'package:flutter/material.dart';

import '../styles/typography.dart';

class WuiDrawerDivider extends StatelessWidget {

  final Widget? child;

  const WuiDrawerDivider({ super.key, this.child });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
      child: DefaultTextStyle(
        style: WuiTypography.drawerDividerTextStyle,
        child: child ?? const SizedBox()
      )
    );
  }
}