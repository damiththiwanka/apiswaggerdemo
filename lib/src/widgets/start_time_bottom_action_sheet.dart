import 'package:flutter/material.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';
import 'buttons/primary_button_black.dart';
import 'buttons/primary_button_with_blakish_gradient.dart';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 06/02/23 00:52
///
Widget timeBottomActionSheet(
    {required BuildContext context, required Widget child, required double height}) {
  return GestureDetector(
      onTap: (){showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        elevation: 6,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: height,
              decoration: BoxDecoration(
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
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          GestureDetector(
                              onTap: (){Navigator.pop(context);},
                              child: PrimaryButtonBlack(buttonText: 'CANCEL', buttonWidthRatio: 0.5, opacity: 1)),

                          SizedBox(width: 8,),

                          PrimaryButtonBlackishGradient(buttonWidthRatio: 0.5, opacity: 1, buttonText: 'NEXT',),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );},
      child: child
  );

}
