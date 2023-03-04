import 'package:flutter/material.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/colors.dart';


class PrimaryButtonWithIcon extends StatelessWidget {
  final String buttonText;
  final String imageUrl;

  PrimaryButtonWithIcon({
    required this.buttonText, required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.0,
      width: AppConstants.adaptiveScreen.setWidth(160),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.buttonGradientColorFirst,
            AppColors.buttonGradientColorSecond,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.buttonShadowColor.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(4,5),
          ),
        ],
        borderRadius: BorderRadius.circular(50.0),
       // color: colors.AppColors.buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: AppConstants.adaptiveScreen.setWidth(10)),
            child: Image.asset(imageUrl),width: AppConstants.adaptiveScreen.setWidth(15),),
          Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
