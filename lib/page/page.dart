import 'package:flutter/material.dart';

import '../styles/colors.dart';

class WuiPage extends StatelessWidget {

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;

  const WuiPage({super.key, required this.body, this.appBar, this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WuiColors.surfaceColor,
      drawer: drawer,
      appBar: appBar,
      body: SafeArea(
        child: body
      )
    );
  }
}