import 'dart:ffi';
import 'package:flutter/material.dart';


class PlainLongButtonWithOnlyBorder extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.7;
  //final Function onTap;

  PlainLongButtonWithOnlyBorder({
    required this.buttonText, double? buttonWidthRatio, Color? buttonBorderColor, Color? buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Color(0xFF3E8FC4)),
        // color: colors.AppColors.buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Color(0xFF3276B3),
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
