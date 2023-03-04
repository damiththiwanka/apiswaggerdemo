import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonBlack extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio;
  final int opacity = 1;
  //final Function onTap;

  PrimaryButtonBlack({
    required this.buttonText, required this.buttonWidthRatio, required int opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio - 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // AppColors.black,
            // AppColors.black,
            Colors.transparent,
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent,//AppColors.black.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 5,
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
          fontWeight: FontWeight.w300,
          fontFamily: 'Open Sans',
        ),
      ),
    );
  }
}
