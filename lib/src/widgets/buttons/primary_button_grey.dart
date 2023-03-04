import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonGrey extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.5;
  final double opacity = 1;
  //final Function onTap;

  PrimaryButtonGrey({
    required this.buttonText, required double? buttonWidthRatio, required double opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio - 30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryGrayButtonGradientColorFirst,
            AppColors.primaryGrayButtonGradientColorSecond,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryGrayButtonGradientColorFirst.withOpacity(0.4),
            spreadRadius: 1,
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
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          fontFamily: 'Open Sans',
        ),
      ),
    );
  }
}
