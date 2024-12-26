import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/typography.dart';

class WuiSliverAppBar extends StatelessWidget {

  final List<Widget>? actions;

  const WuiSliverAppBar({super.key, this.actions});

  double expandedHeight(BuildContext context) {
    return MediaQuery.of(context).size.width / 4 * 3;
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [...(actions != null ? actions! : []), const SizedBox(width: 4)],
      toolbarHeight: 56,
      collapsedHeight: 56,
      expandedHeight: expandedHeight(context),
      backgroundColor: WuiColors.appBarBackgroundColor,
      pinned: true,
      flexibleSpace: Container(
        color: WuiColors.surfaceColor,
        padding: const EdgeInsets.only(top: 64),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Dashboard", style: WuiTypography.sliverTitleTextStyle),
              Text("125 Transaksi", style: WuiTypography.defaultTextStyle)
            ],
          )
        ),
      ),
    );
  }
}