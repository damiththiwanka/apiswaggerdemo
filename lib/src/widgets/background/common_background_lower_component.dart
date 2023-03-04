import 'package:flutter/material.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';

class LowerComponent {
  Widget lowerBackGroundComponent({double height = 400}) {
    return Positioned(
      top: AppConstants.adaptiveScreen.setHeight(926 - height),
      child: Container(
        height: AppConstants.adaptiveScreen.setHeight(height),
        width: AppConstants.adaptiveScreen.setWidth(428),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image:AssetImage(AppImages.commonBackground)
          ),
        ),
      ),
    );
  }
}
