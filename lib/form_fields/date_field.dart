import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wui_flutter/date_picker/date_picker.dart';
import 'package:wui_flutter/modals/modals.dart';
import 'package:wui_flutter/styles/input.dart';

class WuiDateField extends StatefulWidget {

  final String? labelText;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime initialDate;
  final Function(DateTime? value)? onChange;

  const WuiDateField({super.key, this.labelText, required this.firstDate, required this.lastDate, required this.initialDate, this.onChange});

  @override
  State<WuiDateField> createState() => _WuiDateFieldState();
}

class _WuiDateFieldState extends State<WuiDateField> {

  TextEditingController controller = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    controller.text = DateFormat('d MMM y').format(widget.initialDate);

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
        suffixIcon: Icon(MdiIcons.calendar),
      ),
      onTap: () async {
        DateTime? value = await wuiShowModalBottomSheet(
          context: context, 
          builder: (BuildContext context) {
            return WuiDatePicker(
              selectedDate: _selectedDate ?? widget.initialDate,
              onChanged: (DateTime value) {
                setState(() { _selectedDate = value; });
                Navigator.of(context).pop(_selectedDate);
              },
            );
          }
        );
        print(value);
        if(widget.onChange != null) widget.onChange!(value);
      }
    );
  }
}