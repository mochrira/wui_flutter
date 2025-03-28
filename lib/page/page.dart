import 'package:flutter/material.dart';

class WuiPage extends StatelessWidget {

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? fab;
  final Widget? bottom;

  const WuiPage({super.key, required this.body, this.appBar, this.drawer, this.fab, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: drawer,
      appBar: appBar,
      body: SafeArea(
        child: body
      ),
      bottomNavigationBar: bottom,
      floatingActionButton: fab != null ? Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: fab!,
      ) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}