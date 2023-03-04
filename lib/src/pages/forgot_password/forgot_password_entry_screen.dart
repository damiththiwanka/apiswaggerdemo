import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordEntryScreen extends BaseView {
  @override
  _ForgotPasswordEntryScreenState createState() => _ForgotPasswordEntryScreenState();
}

class _ForgotPasswordEntryScreenState extends BaseViewState {
  final emailController = TextEditingController();
  final _emailFocusNode = FocusNode();

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
                "Forgot Password",
                style: AppTextStyles().welcomeTextStyle(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Enter your Email to receive OTP",
                style: AppTextStyles().primaryColorLightFont16TextStyle(),
              ),

              Expanded(child: Container()),

              CommonTextFormField(
                type: TextFieldPage.loginEmail,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'Email',
                prefix: Image.asset(
                  AppImages.mailIcon,
                  color: AppColors.white,
                ),
                suffix: SizedBox(),
                controller: emailController,
                inputTitle: 'email',
                inputType: KeyBoardType.EMAIL,
                validationType: ValidationType.EMAIL,
                myUserNameFocusNode: _emailFocusNode,
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(child: Container()),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, NavigationRoutes.OTP_SCREEN); /// to otp screen
                  },
                  child: PrimaryButtonOrange(
                    buttonText: 'REQUEST OTP',
                    opacity: 1,
                    buttonWidthRatio: 0.5,
                  )),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Your Password ?",
                    style: AppTextStyles().offWhiteColorFont16TextStyle(),
                  ),

                  SizedBox(width: 15,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, NavigationRoutes.SIGN_IN_ENTRY_SCREEN);
                    },
                    child: Text(
                      "SIGN IN",
                      style: AppTextStyles().primaryColorFont16TextStyle(),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
