import 'package:flutter/material.dart';

import '../themes/constants.dart';

class WuiActionSheet extends StatelessWidget {

  final Widget? title;
  final List<Widget>? actions;
  const WuiActionSheet({ super.key, this.title, this.actions });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...(title != null ? [Container(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 12),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20
            ),
            child: title ?? Container(),
          ),
        )] : []),
        ...(actions ?? []),
        const SizedBox(height: 16)
      ],
    );
  }

  static Future<dynamic> open(BuildContext context, {
    Widget? title,
    List<Widget>? actions,
    bool useRootNavigator = true
  }) {
    return showModalBottomSheet(context: context, 
      barrierColor: wuiDefaultBarrierColor,
      useRootNavigator: useRootNavigator,
      builder: (BuildContext context) {
        return WuiActionSheet(
          title: title,
          actions: actions
        );
      }
    );
  }
}