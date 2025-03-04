import 'package:flutter/material.dart';

class WuiAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;

  const WuiAppBar({super.key, this.leading, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      leading: leading,
      title: title,
      actions: actions
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(64);
}