import 'package:flutter/material.dart';

class WuiSliverView extends StatelessWidget {

  final ScrollController? controller;
  final List<Widget> children;
  
  const WuiSliverView({super.key, this.controller, required this.children});

  Widget main(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return main(context);
  }

  static withRefreshIndicator({
    required Future<void> Function() onRefresh,
    required List<Widget> children,
    ScrollController? controller
  }) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: WuiSliverView(
        controller: controller,
        children: children,
      ),
    );
  }
}