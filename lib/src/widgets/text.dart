import 'package:flutter/material.dart';
import 'package:base3/src/values/dimens.dart' as dimens;
import 'package:base3/src/values/colors.dart' as colors;

class CustomText extends StatelessWidget {
  final String? text;
  final bool title;
  final bool bold;
  final bool big;
  final bool small;
  final bool center;
  final bool white;
  final bool dark;
  final bool accent;
  final bool primary;
  final bool primaryDark;
  final Color color;
  final int maxLines;

  CustomText(
      {this.text = '',
      this.title = false,
      this.bold = false,
      this.big = false,
      this.small = false,
      this.center = false,
      this.white = false,
      this.dark = false,
      this.accent = false,
      this.primary = false,
      this.primaryDark = false,
      this.color = colors.AppColors.primaryColor,
      this.maxLines = 3});

  @override
  Widget build(BuildContext context) {
    final dynamic isBold = bold == true ? FontWeight.bold : FontWeight.normal;

    final String textValue = text!;

    final double fontSize = title == true
        ? dimens.fontTextTitle
        : big == true
            ? dimens.fontTextBig
            : small == true
                ? dimens.fontTextSmall
                : dimens.fontText;

    final Color customColor = primaryDark == true
        ? colors.AppColors.primaryColorDark
        : white == true
            ? Colors.white
            : accent == true
                ? colors.AppColors.accentLightColor
                : colors.AppColors.primaryColor;

    return Text(textValue,
        maxLines: maxLines,
        textAlign: center == true ? TextAlign.center : null,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: fontSize,
            color: color == null
                ? dark == true
                    ? colors.AppColors.backgroundColor
                    : customColor
                : color,
            fontWeight: isBold));
  }
}
