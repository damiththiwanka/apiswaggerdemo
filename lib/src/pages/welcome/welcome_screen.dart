import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends BaseView {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends BaseViewState {

  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
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
              color: AppColors.backgroundGradientColorThird.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(5,5),
            ),
          ],
          // color: colors.AppColors.buttonColor,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(child: Container()),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60, width: 300,
                child: Image.asset(
                  AppImages.logoCombination,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),

            SizedBox(height: 6,),

            Padding(
              padding: EdgeInsets.only(right: 30, left: 30, bottom: 20, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child:
                Image.asset(
                  AppImages.backgroundMainImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),

            Text("Welcome",
              style: AppTextStyles().welcomeTextStyle(),
            ),

            SizedBox(height: 15,),

            Text("Space for the tag line",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),

            Expanded(child: Container()),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Container()),

                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, NavigationRoutes.WELCOME_SCREEN);},
                    child: PrimaryButtonGrey(buttonText: 'SKIP', opacity: 1, buttonWidthRatio: 0.5,)),

                SizedBox(width: 25,),

                GestureDetector(
                    onTap: (){Navigator.pushNamed(context, NavigationRoutes.WELCOME_SCREEN_SECOND);},
                    child: PrimaryButtonOrange(buttonText: 'NEXT', opacity: 1, buttonWidthRatio: 0.5,)),

                Expanded(child: Container()),
              ],
            ),

            SizedBox(height: 25,),

            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
