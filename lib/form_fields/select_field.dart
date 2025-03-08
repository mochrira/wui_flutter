import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/input.dart';

typedef ValueChanged<T> = void Function(T value);

class WuiSelectField<T> extends StatelessWidget {

  final String? labelText;
  final List<DropdownMenuEntry> entries;
  final dynamic initialSelection;
  final ValueChanged<T>? onSelected;

  const WuiSelectField({super.key, required this.entries, this.labelText, this.onSelected, this.initialSelection});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(labelText != null) Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(labelText!, style: WuiInputStyle.labelTextStyle(context)),
        ),
        DropdownMenu(
          onSelected: (value) {
            if(onSelected != null) onSelected!(value);
          },
          initialSelection: initialSelection,
          dropdownMenuEntries: entries,
          trailingIcon: const Icon(Icons.arrow_drop_down),
          textStyle: const TextStyle( fontFamily: "Inter", fontSize: 14 ),
          inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            constraints: BoxConstraints.tight(const Size.fromHeight(48)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            enabledBorder: WuiInputStyle.border(context),
            focusedBorder: WuiInputStyle.focusedBorder(context),
          ),
        ),
      ],
    );
  }
}

