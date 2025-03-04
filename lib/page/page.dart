import 'package:flutter/material.dart';

import '../styles/colors.dart';

class WuiPage extends StatelessWidget {

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? fab;

  const WuiPage({super.key, required this.body, this.appBar, this.drawer, this.fab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: drawer,
      appBar: appBar,
      body: SafeArea(
        child: body
      ),
      floatingActionButton: fab != null ? Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: fab!,
      ) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}