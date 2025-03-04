import 'package:flutter/material.dart';
import '../drawer/drawer_model.dart';
import '../styles/colors.dart';

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
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: RawMaterialButton(
        fillColor: isSelected ? WuiColors.drawerButtonSelectedColor : Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        disabledElevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              ...(icon != null ? [IconTheme(data: IconThemeData(
                color: isSelected ? WuiColors.primaryColor : Theme.of(context).colorScheme.onSurface
              ), child: icon!), const SizedBox(width: 24)] : []),
              ...(child != null ? [Expanded(child: DefaultTextStyle(
                style: TextStyle(color: Theme.of(context).colorScheme.onSurface), 
                child: child!))] : [])
            ],
          )
        )
      ),
    );
  }
}