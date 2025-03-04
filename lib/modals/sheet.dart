import 'package:flutter/material.dart';

import '../styles/typography.dart';

class WuiActionSheet extends StatelessWidget {

  final BuildContext context;
  final Widget? title;
  final List<Widget>? actions;

  const WuiActionSheet({super.key, required this.context, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: DefaultTextStyle(style: WuiTypography.sheetTitleStyle, child: title ?? const Text(""))
        ),
        ...(actions != null ? actions! : []),
        const SizedBox(height: 16)
      ],
    );
  }
}