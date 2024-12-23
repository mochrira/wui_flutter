import 'package:flutter/material.dart';

class WuiDrawerDivider extends StatelessWidget {

  final bool? line;
  final String? labelText;
  const WuiDrawerDivider({ 
    super.key,
    this.line = true,
    this.labelText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...(line == true ? [Container(
            height: 1,
            color: Colors.black.withOpacity(.12)
          )] : []),
          ...(labelText != null && line == true ? [
            const SizedBox(height: 16) 
          ] : []),
          ...(labelText != null ? [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(labelText ?? "", style: TextStyle(
                fontSize: 12, 
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.67)
              )),
            ),
          ] : [])
        ],
      ),
    );
  }
}