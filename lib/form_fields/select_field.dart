import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wui_flutter/list/list_tile.dart';
import 'package:wui_flutter/modals/modals.dart';
import 'package:wui_flutter/modals/sheet.dart';
import 'package:wui_flutter/styles/colors.dart';
import 'package:wui_flutter/styles/typography.dart';

import '../styles/input.dart';

class WuiSelectFieldItem extends StatelessWidget {

  final dynamic value;
  final String labelText;
  final bool? selected;

  const WuiSelectFieldItem({
    super.key,
    required this.value,
    required this.labelText,
    this.selected
  });

  @override
  Widget build(BuildContext context) {
    return WuiListTile(
      fillColor: (selected ?? false) ? WuiColors.selectedFillColor : null,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      leading: (selected ?? false) ? Icon(MdiIcons.radioboxMarked, 
        color: Theme.of(context).primaryColor
      ) : Icon(MdiIcons.radioboxBlank),
      title: Text(labelText, 
        style: (selected ?? false) ? 
          WuiTypography.listTileTitleStyle.copyWith(color: Theme.of(context).primaryColor) : 
          null
      ),
      onTap: () {
        Navigator.of(context).pop(value);
      },
    );
  }
}

class WuiSelectField extends StatefulWidget {
  
  final String? labelText;
  final String? sheetTitleText;
  final Map<dynamic, String>? choices;
  final dynamic value;
  final Function(dynamic value)? onChange;

  const WuiSelectField({super.key, this.labelText, this.sheetTitleText, this.choices, this.value, this.onChange});

  @override
  State<WuiSelectField> createState() => _WuiSelectFieldState();
}

class _WuiSelectFieldState extends State<WuiSelectField> {
  TextEditingController controller = TextEditingController();

  pickValue(BuildContext context) async {
    dynamic selectedValue = await wuiShowModalBottomSheet(
      context: context,
      builder: (BuildContext context) => WuiActionSheet(
        context: context, 
        title: Text(widget.sheetTitleText ?? ""),
        actions: widget.choices?.map((dynamic k, String v) => MapEntry(k, WuiSelectFieldItem(
          value: k, labelText: v, selected: k == widget.value,
        ))).values.toList()
      ),
    );
    if(selectedValue != null && widget.onChange != null) {
      widget.onChange!(selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.text = widget.choices?[widget.value] ?? "";
    return TextField(
      controller: controller,
      style: WuiInputStyle.style,
      readOnly: true,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: WuiInputStyle.labelStyle,
        floatingLabelStyle: WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
          if(states.contains(WidgetState.focused)) {
            return WuiInputStyle.floatingLabelFocusedStyle;
          }
          return WuiInputStyle.floatingLabelStyle;
        }),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        // border: WuiInputStyle.border,
        // enabledBorder: WuiInputStyle.border,
        // focusedBorder: WuiInputStyle.focusedBorder,
        // errorBorder: WuiInputStyle.focusedBorder,
        // disabledBorder: WuiInputStyle.border,
        suffixIcon: Icon(MdiIcons.chevronDown),
      ),
      onTap: () {
        pickValue(context);
      },
    );
  }
}

