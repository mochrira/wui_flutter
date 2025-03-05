import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/colors.dart';

import 'typography.dart';

class WuiButtonStyle {

  static ButtonStyle primary(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(
        Theme.of(context).colorScheme.onSurface
      ),
      foregroundColor: WidgetStatePropertyAll(
        Theme.of(context).colorScheme.surface
      ),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      )),
      padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24
      )),
      elevation: const WidgetStatePropertyAll(0),
      textStyle: const WidgetStatePropertyAll(TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w600
      ))
    );
  }

}

class WuiButtonDefault {

  static ButtonStyle get normal => ElevatedButton.styleFrom(
    backgroundColor: WuiColors.buttonBackgroundColor,
    foregroundColor: WuiColors.buttonForegroundColor,
    textStyle: WuiTypography.buttonTextStyle,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8)
    )
  ).copyWith(
    elevation: const WidgetStatePropertyAll(0),
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(48))
  );

  static ButtonStyle get small => normal.copyWith(
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(40))
  );

  static ButtonStyle get large => normal.copyWith(
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(56))
  );

}

class WuiButtonPrimary {

  static ButtonStyle get normal => ElevatedButton.styleFrom(
    backgroundColor: WuiColors.buttonPrimaryBackgroundColor,
    foregroundColor: WuiColors.buttonPrimaryForegroundColor,
    textStyle: WuiTypography.buttonTextStyle,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8)
    )
  ).copyWith(
    elevation: const WidgetStatePropertyAll(0),
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(48))
  );

  static ButtonStyle get small => normal.copyWith(
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(40))
  );

  static ButtonStyle get large => normal.copyWith(
    minimumSize: const WidgetStatePropertyAll(Size.fromHeight(56))
  );

}