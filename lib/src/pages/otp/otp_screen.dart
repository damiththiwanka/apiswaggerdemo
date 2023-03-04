import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/otp_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OTPScreen extends BaseView {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends BaseViewState {

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
              offset: Offset(5, 5),
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
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  AppImages.logoCombinedVertically,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              "Verify Your Email",
              style: AppTextStyles().welcomeTextStyle(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enter OTP sent to your Email",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),

            Expanded(child: Container()),

            Container(width: MediaQuery.of(context).size.width - 50, height: 60,
            child: OTPField(onOTPEntered: (String otp){
              print(otp);
            },),
            ),

            SizedBox(
              height: 30,
            ),

            Expanded(child: Container()),

            Text(
              "Inadheem@gmail.com",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),

            SizedBox(
              height: 15,
            ),

            Expanded(child: Container()),

            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, NavigationRoutes.RESET_PASSWORD_ENTRY_SCREEN);
              },
              child: Text(
                "Change Email",
                style: AppTextStyles().primaryColorLightFont16TextStyle(),
              ),
            ),

            Expanded(child: Container()),

            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15,),

                Text(
                  "Didn't receive OTP ?",
                  style: AppTextStyles().primaryColorLightFont16TextStyle(),
                ),

                Expanded(child: Container()),

                Text(
                  "Resend Again",
                  style: AppTextStyles().primaryColorFont16TextStyle(),
                ),
                SizedBox(width: 15,),

                Text(
                  "6",
                  style: AppTextStyles().primaryColorFont16TextStyle(),
                ),
                SizedBox(width: 15,),
              ],
            ),

            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
