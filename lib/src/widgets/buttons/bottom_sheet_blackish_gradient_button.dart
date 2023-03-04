import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class BottomSheetBlackishGradientButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.45;
  final double opacity = 1;
  //final Function onTap;

  BottomSheetBlackishGradientButton({
    required this.buttonText, required double buttonWidthRatio, required double opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 45.0,
      width: MediaQuery.of(context).size.width * buttonWidthRatio - 30,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bottomSheetBlackishButtonGradientColorFirst,
              AppColors.bottomSheetBlackishButtonGradientColorSecond,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.white.withOpacity(0.1),
          //     spreadRadius: 1,
          //     blurRadius: 5,
          //     offset: Offset(0,-8),
          //   ),
          // ],
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: AppColors.primaryBlackButtonGradientColorFirst,)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          buttonText,
          style: TextStyle(
            color: AppColors.offWhiteColor.withOpacity(0.8),
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
    );
  }
}
