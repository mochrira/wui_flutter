import 'package:flutter/material.dart';

class WuiBadge extends StatelessWidget {

  final String text;

  const WuiBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(4)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(text, 
        style: TextStyle(
          color: Theme.of(context).colorScheme.surface,
          fontFamily: "Inter",
          fontSize: 12.0,
          fontWeight: FontWeight.w600
        )
      )
    );
  }
}