/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 18:03
import 'package:flutter/material.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';

class SingleMenu extends StatelessWidget {
  final String menuTitle;
  final String imageUrl;
  final bool isImportant;

  SingleMenu(
      {required this.menuTitle,
      required this.imageUrl,
      required this.isImportant});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.adaptiveScreen.setHeight(60),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: AppConstants.adaptiveScreen.setHeight(90),
            width: AppConstants.adaptiveScreen.setWidth(90),
            decoration: BoxDecoration(
              color: AppColors.fillColors,
              boxShadow: [
                // BoxShadow(
                //   color: AppColors.buttonShadowColor.withOpacity(0.2),
                //   spreadRadius: 1,
                //   blurRadius: 2,
                //   offset: Offset(4,5),
                // ),
              ],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Visibility(
                    visible: isImportant,
                    child:
                        Container(
                            height: AppConstants.adaptiveScreen.setHeight(20),
                            child: Image.asset(AppImages.importantIcon)),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: AppConstants.adaptiveScreen.setHeight(30),
                    child: Center(
                      child: Image.asset(imageUrl),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: AppConstants.adaptiveScreen.setHeight(7)),
              child: Text(menuTitle, style: styles.commonBold))
        ],
      ),
    );
  }
}
