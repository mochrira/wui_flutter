import 'package:flutter/material.dart';

import '../page/page.dart';

class WuiSliverView extends StatelessWidget {

  final Widget? appBar;
  final Widget? body;
  
  const WuiSliverView({super.key, this.appBar, this.body});

  hasFab(BuildContext context) {
    return context.findAncestorWidgetOfExactType<WuiPage>()?.fab != null;
  }

  Widget main(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ...(appBar != null ? [appBar!] : []),
        ...(body != null ? [body!] : []),
        ...(hasFab(context) ? [const SliverPadding(padding: EdgeInsets.only(bottom: 96))] : [])
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return main(context);
  }

  static withRefreshIndicator({
    required Future<void> Function() onRefresh,
    Widget? appBar,
    Widget? body
  }) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: WuiSliverView(
        appBar: appBar,
        body: body,
      ),
    );
  }
}