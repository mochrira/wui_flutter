import 'package:flutter/material.dart';
import '../styles/typography.dart';

class WuiSliverAppBar extends StatelessWidget {

  final Widget? title;
  final Widget? subTitle;
  final List<Widget>? actions;

  const WuiSliverAppBar({super.key, this.actions, this.title, this.subTitle});

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
      backgroundColor: Theme.of(context).colorScheme.surface,
      pinned: true,
      flexibleSpace: Container(
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.only(top: 64),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ...(title != null ? [DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal,
                  fontSize: 32.0,
                  color: Theme.of(context).colorScheme.onSurface
                ),
                child: title!
              )] : []),
              const SizedBox(height: 8),
              ...(subTitle != null ? [DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSurface
                ),
                child: subTitle!
              )] : [])
            ],
          )
        ),
      ),
    );
  }
}