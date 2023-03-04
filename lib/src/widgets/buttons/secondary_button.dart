import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  //final Function onTap;

  SecondaryButton({
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.borderColor),
        color: buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: 14.0,
          fontFamily: 'Aileron',
        ),
      ),
    );
  }
}
