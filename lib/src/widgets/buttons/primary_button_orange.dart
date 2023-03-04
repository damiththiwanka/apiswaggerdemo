import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonOrange extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.5;
  final int opacity = 1;
  //final Function onTap;

  PrimaryButtonOrange({
    required this.buttonText, required double? buttonWidthRatio, required int opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio - 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryOrangeButtonGradientColorFirst,
            AppColors.primaryOrangeButtonGradientColorSecond,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryOrangeButtonGradientColorFirst.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(-5,-5),
          ),
        ],
        borderRadius: BorderRadius.circular(50.0),
        // color: colors.AppColors.buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
