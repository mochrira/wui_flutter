import 'package:flutter/material.dart';
import 'package:wui_flutter/drawer/drawer_model.dart';
import 'package:wui_flutter/styles/colors.dart';
import 'package:wui_flutter/styles/typography.dart';

class WuiDrawerButton extends StatelessWidget {

  final String? id;
  final Widget? child;
  final Icon? icon;
  final VoidCallback? onPressed;

  WuiDrawerButton({super.key, this.id, this.child, this.icon, this.onPressed});

  final WuiDrawerModel _model = WuiDrawerModel();

  get isSelected {
    return _model.activeId == id;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: RawMaterialButton(
        fillColor: isSelected ? WuiColors.drawerButtonSelectedColor : Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        disabledElevation: 0,
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
              ...(icon != null ? [IconTheme(data: IconThemeData(
                color: isSelected ? WuiColors.primaryColor : WuiColors.textColor
              ), child: icon!), const SizedBox(width: 24)] : []),
              ...(child != null ? [Expanded(child: DefaultTextStyle(
                style: WuiTypography.drawerButtonTextStyle.copyWith(
                  color: isSelected ? WuiColors.primaryColor : WuiColors.textColor
                ), 
                child: child!))] : [])
            ],
          )
        )
      ),
    );
  }
}