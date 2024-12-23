import 'package:flutter/material.dart';

class WuiDrawerButton extends StatelessWidget {

  final Widget? child;
  final Icon? icon;
  final VoidCallback? onPressed;

  const WuiDrawerButton({super.key, this.child, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: RawMaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24), 
            bottomRight: Radius.circular(24)
          )
        ),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              ...(icon != null ? [icon!, const SizedBox(width: 24)] : []),
              ...(child != null ? [Expanded(child: child!)] : [])
            ],
          )
        )
      ),
    );
  }
}