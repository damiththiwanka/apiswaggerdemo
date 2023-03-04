import 'package:base3/src/values/colors.dart';
import 'package:flutter/material.dart';

import 'app.constants.dart';

/// Project sl_login
/// Create by Madushanka Madakumbura on 11/1/21 13:03
class AppTextStyles {

  ///New Project Text Styles
  ///

  TextStyle welcomeTextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 40,
        fontWeight: FontWeight.w300
    );
  }

  TextStyle primaryTextColorFont32TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w300
    );
  }

  TextStyle primaryTextColorFont28TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 28,
        fontWeight: FontWeight.w300
    );
  }

  TextStyle primaryTextColorFont22TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 22,
        fontWeight: FontWeight.w300
    );
  }

  TextStyle primaryColorLightFont16TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColorLight,
        fontSize: 16,
        fontWeight: FontWeight.normal
    );
  }

  TextStyle primaryColorWhite16TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.white.withOpacity(0.8),
        fontSize: 16,
        fontWeight: FontWeight.normal
    );
  }

  TextStyle primaryColorFont16TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 16,
        fontWeight: FontWeight.normal
    );
  }

  TextStyle primaryColorFont22TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.primaryTextColor,
        fontSize: 22,
        fontWeight: FontWeight.normal
    );
  }

  TextStyle offWhiteColorFont14TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.offWhiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w300,
    );
  }

  TextStyle offWhiteColorFont14LineHeight130TextStyle() {
    return TextStyle(
      fontFamily: 'Open Sans',
      color: AppColors.offWhiteColor,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      height: 1.3,
    );
  }

  TextStyle offWhiteColorFont14BoldTextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.offWhiteColor,
        fontSize: 14,
        fontWeight: FontWeight.bold
    );
  }

  TextStyle offWhiteColorFont16TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.offWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.normal
    );
  }

  TextStyle offWhiteColorFont18TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.offWhiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
    );
  }

  TextStyle offWhiteColorFont19TextStyle() {
    return TextStyle(
      fontFamily: 'Open Sans',
      color: AppColors.offWhiteColor,
      fontSize: 19,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle offWhiteColorFont22TextStyle() {
    return TextStyle(
        fontFamily: 'Open Sans',
        color: AppColors.offWhiteColor,
        fontSize: 22,
        fontWeight: FontWeight.normal
    );
  }




  TextStyle commonButtonTextStyle() {
    return TextStyle(
        color: AppColors.backgroundColor,
        fontWeight: FontWeight.bold,
        fontSize: AppConstants.adaptiveScreen.setSp(40));
  }

  TextStyle titleText() {
    return TextStyle(
      color: AppColors.forgetPasswordTitleColor,
      fontSize: 35,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textWhite() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle subtitleTextFont14() {
    return TextStyle(
      color: Color(0xFFbce3f1),
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle numberStyle() {
    return TextStyle(
      color: Color(0xFFbce3f1),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle descriptionTextGreyFont12() {
    return TextStyle(
      color: AppColors.grey,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      fontFamily: 'Open Sans',
    );
  }

  TextStyle descriptionTextGreyFont16() {
    return TextStyle(
      color: AppColors.offWhiteColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'Open Sans',
    );
  }
}
///
TextStyle titleText = TextStyle(
  color: AppColors.forgetPasswordTitleColor,
  fontSize: 35,
  fontWeight: FontWeight.w700,
);

TextStyle textWhite = TextStyle(
  color: AppColors.white,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle subtitleTextFont14 = TextStyle(
  color: Color(0xFF0B275D),
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

TextStyle welcome = TextStyle(
  color: AppColors.white,
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
TextStyle welcomeSubtitle = TextStyle(
  color: AppColors.white,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
TextStyle underLineTextSignUp = TextStyle(
  color: AppColors.signUpnForgotTextColor,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.underline,
);
TextStyle languageSelectionTitleStyle = TextStyle(
  color: AppColors.signUpnForgotTextColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
TextStyle languageSelectionSubTitleStyle = TextStyle(
  color: AppColors.signUpnForgotTextColor,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
TextStyle labelStyle = TextStyle(
  color: AppColors.grey.withOpacity(0.1),
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
TextStyle forgotPasswordTextStyle = TextStyle(
  color: AppColors.signUpnForgotTextColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
TextStyle homeBeginFirstTitle = TextStyle(
  color: AppColors.white,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);
TextStyle homeBeginJourneySecondTitle = TextStyle(
  color: AppColors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
TextStyle profileName = TextStyle(
  color: AppColors.white,
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
TextStyle welcomeHome = TextStyle(
  color: AppColors.white,
  fontSize: 20,
  fontWeight: FontWeight.normal,
);
TextStyle balanceCheck = TextStyle(
  color: AppColors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
TextStyle commonBold = TextStyle(
  color: AppColors.black,
  fontSize: 13,
  fontWeight: FontWeight.w700,
);
TextStyle commonBold2 = TextStyle(
  color: AppColors.black,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

///
TextStyle primaryTextStyle = TextStyle(
  color: AppColors.appPrimaryColor,
  fontSize: 20,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.w900,
);

TextStyle miniTextStyle = TextStyle(
  color: AppColors.appPrimaryColor,
  fontSize: 14,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.normal,
);
TextStyle miniTextStyleAppPrimaryColor = TextStyle(
  color: AppColors.appPrimaryColor,
  fontSize: 14,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.bold,
  height: 1.5,
);

TextStyle miniTextStyleBlackColor = TextStyle(
  color: AppColors.black,
  fontSize: 14,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.normal,
  height: 1.5,
);

TextStyle timerNumberTextStyle = TextStyle(
  color: AppColors.appPrimaryColor,
  fontSize: 42,
  fontWeight: FontWeight.bold,
);

TextStyle largeWhiteText = TextStyle(
  color: AppColors.white,
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Aileron',
  letterSpacing: 1,
);

TextStyle subTextLightBlueStyle = TextStyle(
  color: AppColors.lightBlueTextColor,
  fontSize: 18,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.normal,
);

TextStyle appBarTextStyle = TextStyle(
  fontSize: 18,
  color: AppColors.white,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.bold,
);

TextStyle descriptionTextStylePrimaryColorDark = TextStyle(
  fontSize: 15,
  color: AppColors.appPrimaryColor,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.w600,
);

TextStyle miniTextDarkBlue = TextStyle(
  color: AppColors.miniTextDarkBlue,
  fontSize: 13,
  fontFamily: 'Aileron',
  fontWeight: FontWeight.bold,
);
TextStyle accDetailsBlockText = TextStyle(
  color: AppColors.white.withOpacity(0.8),
  fontSize: 15,
  fontWeight: FontWeight.normal,
  fontFamily: 'Aileron',
);

TextStyle descriptionTextBlackFont12 = TextStyle(
  color: AppColors.black,
  fontSize: 12,
  fontWeight: FontWeight.normal,
  fontFamily: 'Aileron',
);