import 'package:flutter/material.dart';

import '../page/page.dart';

class WuiSliverView extends StatelessWidget {

  final Widget? appBar;
  final Widget? body;
  
  const WuiSliverView({super.key, this.appBar, this.body});

  hasFab(BuildContext context) {
    return context.findAncestorWidgetOfExactType<WuiPage>()?.fab != null;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async { },
      child: CustomScrollView(
        slivers: [
          ...(appBar != null ? [appBar!] : []),
          ...(body != null ? [body!] : []),
          ...(hasFab(context) ? [const SliverPadding(padding: EdgeInsets.only(bottom: 96))] : [])
        ],
      ),
    );
  }
}