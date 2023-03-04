import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonLongOrange extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.6;
  //final Function onTap;

  PrimaryButtonLongOrange({
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio,
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
            spreadRadius: 3,
            blurRadius: 8,
            offset: Offset(-5,-5),
          ),
        ],
        borderRadius: BorderRadius.circular(50.0),
        // color: colors.AppColors.buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Open Sans',
        ),
      ),
    );
  }
}
