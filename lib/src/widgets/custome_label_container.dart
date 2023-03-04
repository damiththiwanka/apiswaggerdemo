import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';


class CustomLabelContainer extends StatelessWidget {
  final String labelTitleText;
  final String labelDescriptionText;
  final double labelContainerWidthRatio = 0.45;
  final double opacity = 1;
  //final Function onTap;

  CustomLabelContainer({
    required this.labelTitleText, required double labelContainerWidthRatio, required double opacity, required this.labelDescriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50.0,
      width: MediaQuery.of(context).size.width * labelContainerWidthRatio - 30,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              labelTitleText,
              style: TextStyle(
                color: AppColors.offWhiteColor.withOpacity(0.8),
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                fontFamily: 'Open Sans',
              ),
            ),
          ),

          SizedBox(height: 6,),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              labelDescriptionText,
              style: TextStyle(
                color: AppColors.offWhiteColor.withOpacity(0.8),
                fontSize: 11.0,
                fontWeight: FontWeight.w300,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
