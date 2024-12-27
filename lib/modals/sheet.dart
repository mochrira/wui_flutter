import 'package:flutter/material.dart';

import '../styles/typography.dart';

class WuiSheet extends StatelessWidget {

  final Widget? title;
  final List<Widget>? actions;

  const WuiSheet({super.key, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: DefaultTextStyle(style: WuiTypography.sheetTitleStyle, child: title ?? const Text(""))
        ),
        ...(actions != null ? actions! : []),
        const SizedBox(height: 16)
      ],
    );
  }
}