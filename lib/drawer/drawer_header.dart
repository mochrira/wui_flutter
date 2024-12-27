import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../drawer/drawer_model.dart';
import '../styles/typography.dart';

class WuiDrawerHeader extends StatefulWidget {

  final Widget? title;
  final Widget? subTitle;
  final WuiDrawerMode? mode;

  const WuiDrawerHeader({super.key, this.title, this.subTitle, this.mode});

  @override
  State<WuiDrawerHeader> createState() => _WuiDrawerHeaderState();
}

class _WuiDrawerHeaderState extends State<WuiDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: DefaultTextStyle(
        style: WuiTypography.defaultTextStyle.copyWith(
          fontWeight: FontWeight.w500
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: 72, height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.grey.shade300
                ),
              ),
            ),
            const SizedBox(height: 12),
            RawMaterialButton(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextStyle(style: WuiTypography.drawerHeaderTitleStyle, child: widget.title ?? const Text("")),
                          DefaultTextStyle(style: WuiTypography.drawerHeaderSubTitleStyle, child: widget.subTitle ?? const Text("")),
                        ],
                      ),
                    ),
                    Icon(widget.mode == WuiDrawerMode.primary ? MdiIcons.chevronDown : MdiIcons.chevronUp)
                  ],
                ),
              ),
              onPressed: () {
                WuiDrawerModel().setMode(
                  widget.mode == WuiDrawerMode.primary ? 
                    WuiDrawerMode.secondary : WuiDrawerMode.primary
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}