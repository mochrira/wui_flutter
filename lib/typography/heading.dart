import 'package:flutter/material.dart';
import '../themes/constants.dart';

class WuiTextHeading1 extends StatelessWidget {

  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const WuiTextHeading1(String this.text, { super.key, this.textStyle, this.textAlign });

  double _fontSize(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    return (Theme.of(context).textTheme.bodyMedium!.fontSize! * 2.5) + (vw/100 * 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: wuiDefaultTextColor,
        fontSize: _fontSize(context),
        height: 1.2,
      ).merge(textStyle ?? const TextStyle()),
      textAlign: textAlign,
    );
  }
}

class WuiTextHeading2 extends StatelessWidget {

  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const WuiTextHeading2(String this.text, { super.key, this.textStyle, this.textAlign });

  double _fontSize(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    return (Theme.of(context).textTheme.bodyMedium!.fontSize! * 2) + (vw/100 * 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: wuiDefaultTextColor,
        fontSize: _fontSize(context),
        height: 1.2,
      ).merge(textStyle ?? const TextStyle()),
      textAlign: textAlign,
    );
  }
}

class WuiTextHeading3 extends StatelessWidget {

  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const WuiTextHeading3(String this.text, { super.key, this.textStyle, this.textAlign });

  double _fontSize(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    return (Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.6) + (vw/100 * 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: wuiDefaultTextColor,
        fontSize: _fontSize(context),
        height: 1.2,
      ).merge(textStyle ?? const TextStyle()),
      textAlign: textAlign,
    );
  }
}

class WuiTextHeading4 extends StatelessWidget {

  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const WuiTextHeading4(String this.text, { super.key, this.textStyle, this.textAlign });

  double _fontSize(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    return (Theme.of(context).textTheme.bodyMedium!.fontSize! * 1.25) + (vw/100 * 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: wuiDefaultTextColor,
        fontSize: _fontSize(context),
        height: 1.2,
      ).merge(textStyle ?? const TextStyle()),
      textAlign: textAlign,
    );
  }
}

class WuiTextHeading5 extends StatelessWidget {

  final String? text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const WuiTextHeading5(String this.text, { super.key, this.textStyle, this.textAlign });

  double _fontSize(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    return (Theme.of(context).textTheme.bodyMedium!.fontSize! * 1) + (vw/100 * 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: wuiDefaultTextColor,
        fontSize: _fontSize(context),
        height: 1.2,
      ).merge(textStyle ?? const TextStyle()),
      textAlign: textAlign,
    );
  }
}