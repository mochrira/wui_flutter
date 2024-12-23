import 'package:flutter/material.dart';

import '../styles/typography.dart';

class WuiDrawerHeader extends StatelessWidget {

  final Widget? title;
  final Widget? subTitle;

  const WuiDrawerHeader({super.key, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: DefaultTextStyle(
        style: wuiDefaultTextStyle.copyWith(
          fontWeight: FontWeight.w500
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.grey.shade300
                ),
              ),
            ),
            const SizedBox(height: 12),
            RawMaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(style: wuiDrawerHeaderTitleStyle, child: title ?? const Text("")),
                    DefaultTextStyle(style: wuiDrawerHeaderSubTitleStyle, child: subTitle ?? const Text("")),
                  ],
                ),
              ),
              onPressed: () {
                
              }
            ),
          ],
        ),
      ),
    );
  }
}