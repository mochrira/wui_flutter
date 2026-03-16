import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/colors.dart';

import 'typography.dart';

enum WuiButtonSize { small, normal, large }
enum WuiButtonWidth { shrink, infinity }

class WuiButtonStyle {

  static ButtonStyle normal(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Colors.transparent,
        WidgetState.hovered: Theme.of(context).colorScheme.onSurface.withAlpha(100)
      }),
      overlayColor: WidgetStateProperty.fromMap({
        WidgetState.hovered: Theme.of(context).colorScheme.onSurface.withAlpha(25),
        WidgetState.pressed: Theme.of(context).colorScheme.onSurface.withAlpha(50)
      }),
      foregroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface.withAlpha(200),
        WidgetState.hovered: Theme.of(context).colorScheme.onSurface
      })
    );
  }

  static ButtonStyle primary(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary.withAlpha(25),
        WidgetState.hovered: Theme.of(context).colorScheme.primary.withAlpha(100)
      }),
      overlayColor: WidgetStateProperty.fromMap({
        WidgetState.hovered: Theme.of(context).colorScheme.primary.withAlpha(25),
        WidgetState.pressed: Theme.of(context).colorScheme.primary.withAlpha(50)
      }),
      foregroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary.withAlpha(200),
        WidgetState.hovered: Theme.of(context).colorScheme.primary
      })
    );
  }

  static ButtonStyle ghost() {
    return ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
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

  static ButtonStyle base() {
    return ButtonStyle(
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

  

  static ButtonStyle secondary(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(
        Theme.of(context).colorScheme.onSurface.withAlpha(10)
      )
    );
  }

  static ButtonStyle small(BuildContext context) {
    return const ButtonStyle(
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16
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