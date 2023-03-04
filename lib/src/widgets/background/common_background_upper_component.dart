import 'package:flutter/material.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/colors.dart';


class UpperComponent {

  Widget upperBackgroundComponent({
    String title = "",
  }) {
    return Container(
      width: AppConstants.adaptiveScreen.setWidth(428),
      height: AppConstants.adaptiveScreen.setHeight(300),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: AppConstants.adaptiveScreen.setHeight(50),
              ),
              child: Text(
                title,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppConstants.adaptiveScreen.setSp(25),
                    fontWeight: FontWeight.bold)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
