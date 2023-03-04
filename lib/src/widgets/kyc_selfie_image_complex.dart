import 'package:flutter/cupertino.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';

class KYCSelfieScreenImageComplex extends StatelessWidget {
  const KYCSelfieScreenImageComplex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        height: 400,
        width: 250,
        child: Stack(
          children: [
            Positioned(
              top: AppConstants.adaptiveScreen.setHeight(130),
              right: 30,
              left: 0,
              child: Container(
                width: AppConstants.adaptiveScreen.setWidth(230),
                height: AppConstants.adaptiveScreen.setHeight(230),
                child: Image.asset(AppImages.blueRing),
              ),
            ),

            Positioned(
              top: AppConstants.adaptiveScreen.setHeight(170),
              right: 30,
              left: 0,
              child: Container(
                width: AppConstants.adaptiveScreen.setWidth(140),
                height: AppConstants.adaptiveScreen.setHeight(170),
                child: Image.asset(AppImages.kycSelfiePerson),
              ),
            ),

            Positioned(
              top: AppConstants.adaptiveScreen.setHeight(330),
              child: Container(
                width: AppConstants.adaptiveScreen.setWidth(428),
                height: AppConstants.adaptiveScreen.setHeight(40),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.white,
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}