import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeSecondScreen extends BaseView {
  @override
  _WelcomeSecondScreenState createState() => _WelcomeSecondScreenState();
}

class _WelcomeSecondScreenState extends BaseViewState {
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
              AppColors.backgroundGradientColorFirst,
              AppColors.backgroundGradientColorFirst,
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

            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 250,
                  child: Image.asset(
                    AppImages.logoCombination,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 6,
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                AppImages.backgroundMainImageExpanded,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              "Welcome",
              style: AppTextStyles().welcomeTextStyle(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Space for the tag line",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Container()),
                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, NavigationRoutes.SIGN_IN_ENTRY_SCREEN);},
                  child: PrimaryButtonGrey(
                    buttonText: 'SIGN IN',
                    opacity: 1,
                    buttonWidthRatio: 0.5,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, NavigationRoutes.SIGN_UP_ENTRY_SCREEN);},
                  child: PrimaryButtonOrange(
                    buttonText: 'SIGN UP',
                    opacity: 1,
                    buttonWidthRatio: 0.5,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),

            SizedBox(
              height: 25,
            ),

            Text(
              "CONTINUE AS GUEST",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),

            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
