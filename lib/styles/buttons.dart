import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/colors.dart';

import 'typography.dart';

enum WuiButtonSize { small, normal, large }
enum WuiButtonWidth { shrink, infinity }

class WuiButtonSizes {
  static ButtonStyle xsmall(BuildContext context) {
    return ButtonStyle(
      iconSize: const WidgetStatePropertyAll(20),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w500
        )
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12, vertical: 6)
      )
    );
  }

  static ButtonStyle small(BuildContext context) {
    return ButtonStyle(
      iconSize: const WidgetStatePropertyAll(20),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w500
        )
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12, vertical: 10)
      )
    );
  }

  static ButtonStyle medium(BuildContext context) {
    return ButtonStyle(
      iconSize: const WidgetStatePropertyAll(20),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w500
        )
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 16)
      )
    );
  }

  static ButtonStyle large(BuildContext context) {
    return ButtonStyle(
      iconSize: const WidgetStatePropertyAll(32),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 24,
          height: 32 / 24,
          fontWeight: FontWeight.w500
        )
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 48, vertical: 32)
      )
    );
  }

  static ButtonStyle xlarge(BuildContext context) {
    return ButtonStyle(
      iconSize: const WidgetStatePropertyAll(40),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 32,
          height: 40 / 32,
          fontWeight: FontWeight.w500
        )
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 64, vertical: 48)
      )
    );
  }
}

class WuiFilledButtonStyle {

  static ButtonStyle normal(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.surface
      }),
    );
  }

  static ButtonStyle primary(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onPrimary
      }),
    );
  }

  static ButtonStyle danger(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.error
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onError
      }),
    );
  }

}

class WuiTextButtonStyle {

  static ButtonStyle normal(BuildContext context) {
    return ButtonStyle(
      overlayColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface.withAlpha(15)
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface
      }),
    );
  }

  static ButtonStyle primary(BuildContext context) {
    return ButtonStyle(
      overlayColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary.withAlpha(15)
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary
      }),
    );
  }

  static ButtonStyle danger(BuildContext context) {
    return ButtonStyle(
      overlayColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.error.withAlpha(15)
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.error
      }),
    );
  }

}

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

  static ButtonStyle normalFilled(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface.withAlpha(25)
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface
      }),
      overlayColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onSurface.withAlpha(50)
      })
    );
  }

  static ButtonStyle primaryFilled(BuildContext context) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.primary
      }),
      foregroundColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onPrimary
      }),
      overlayColor: WidgetStateColor.fromMap({
        WidgetState.any: Theme.of(context).colorScheme.onPrimary.withAlpha(25)
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