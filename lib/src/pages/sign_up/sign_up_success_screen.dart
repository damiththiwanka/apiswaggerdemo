import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpSuccessScreen extends BaseView {
  @override
  _SignUpSuccessScreenState createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends BaseViewState {
  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                offset: Offset(5, 5),
              ),
            ],
            // color: colors.AppColors.buttonColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    AppImages.successImage,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Congratulations!",
                style: AppTextStyles().primaryTextColorFont32TextStyle(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your account was created successfully",
                style: AppTextStyles().primaryColorLightFont16TextStyle(),
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        NavigationRoutes
                            .CREATE_A_CHARGING_SCHEDULE__ENTRY_SCREEN);
                  },
                  child: PrimaryButtonOrange(
                    buttonText: 'SIGN IN',
                    opacity: 1,
                    buttonWidthRatio: 0.5,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
