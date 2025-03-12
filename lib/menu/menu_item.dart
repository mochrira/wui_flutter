import 'package:flutter/material.dart';

class WuiMenuItem extends StatelessWidget {

  final Icon? icon;
  final Widget? child;
  final void Function()? onTap;

  const WuiMenuItem({super.key, this.onTap, this.icon, this.child});

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        size: 20,
        color: Theme.of(context).colorScheme.onSurface
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            spacing: 24,
            children: [
              ...(icon != null ? [icon!] : []),
              ...(child != null ? [child!] : [])
            ],
          ),
        ),
      ),
    );
  }
}