import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonBlackishGradient extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio;
  final double opacity = 1;
  //final Function onTap;

  PrimaryButtonBlackishGradient({
    required this.buttonText, required this.buttonWidthRatio, required double opacity,
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
            AppColors.primaryBlackButtonGradientColorFirst,
            AppColors.primaryBlackButtonGradientColorSecond,
            AppColors.primaryBlackButtonGradientColorThird,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.white.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0,-8),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: AppColors.primaryBlackButtonGradientColorFirst,)
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          fontFamily: 'Open Sans',
        ),
      ),
    );
  }
}
