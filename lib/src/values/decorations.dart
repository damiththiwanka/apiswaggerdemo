import 'package:base3/src/values/colors.dart';
import 'package:flutter/material.dart';

class AppDecoration{
  BoxDecoration bottomActionSheetDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      gradient: LinearGradient(
        colors: [
          AppColors.backgroundGradientColorThird,
          AppColors.backgroundGradientColorSecond,
          AppColors.backgroundGradientColorFirst,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.primaryGrayButtonGradientColorFirst
              .withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(
            1,
            1,
          ),
        ),
      ],
    );
  }
}