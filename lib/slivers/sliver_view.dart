import 'package:flutter/material.dart';

class WuiSliverView extends StatelessWidget {

  final Widget? appBar;
  final Widget? body;
  
  const WuiSliverView({super.key, this.appBar, this.body});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ...(appBar != null ? [appBar!] : []),
        ...(body != null ? [body!] : [])
      ],
    );
  }
}