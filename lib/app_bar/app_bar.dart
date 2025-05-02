import 'package:flutter/material.dart';

class WuiAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  const WuiAppBar({super.key, this.leading, this.title, this.actions, this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      leading: leading,
      title: title,
      actions: actions,
      bottom: bottom
    );
  }
  
  @override
  Size get preferredSize {
    return Size.fromHeight((bottom?.preferredSize.height ?? 0) + 56);
  }
}