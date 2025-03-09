import 'package:flutter/material.dart';

import '../page/page.dart';

class WuiSliverView extends StatelessWidget {

  final ScrollController? controller;
  final Widget? appBar;
  final Widget? body;
  
  const WuiSliverView({super.key, this.controller, this.appBar, this.body});

  hasFab(BuildContext context) {
    return context.findAncestorWidgetOfExactType<WuiPage>()?.fab != null;
  }

  Widget main(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        ...(appBar != null ? [appBar!] : []),
        ...(body != null ? [body!] : []),
        // ...(hasFab(context) ? [const SliverPadding(padding: EdgeInsets.only(bottom: 96))] : [])
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return main(context);
  }

  static withRefreshIndicator({
    required Future<void> Function() onRefresh,
    ScrollController? controller,
    Widget? appBar,
    Widget? body
  }) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: WuiSliverView(
        controller: controller,
        appBar: appBar,
        body: body,
      ),
    );
  }
}