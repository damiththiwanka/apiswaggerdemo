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

class SignUpPasswordSetupScreen extends BaseView {
  @override
  _SignUpPasswordSetupScreenState createState() => _SignUpPasswordSetupScreenState();
}

class _SignUpPasswordSetupScreenState extends BaseViewState {
  final passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final passwordConfirmController = TextEditingController();
  final _passwordConfirmFocusNode = FocusNode();


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
                "Sign Up",
                style: AppTextStyles().welcomeTextStyle(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Set a Password to Sign Up",
                style: AppTextStyles().primaryColorLightFont16TextStyle(),
              ),
              SizedBox(
                height: 30,
              ),
              CommonTextFormField(
                type: TextFieldPage.loginPassword,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'Password',
                prefix: Image.asset(
                  AppImages.userIcon,
                  color: AppColors.primaryGrayButtonGradientColorFirst,
                ),
                suffix: SizedBox(),
                controller: passwordConfirmController,
                inputTitle: 'password',
                inputType: KeyBoardType.TEXT,
                validationType: ValidationType.PASSWORD,
                myUserNameFocusNode: _passwordFocusNode,
              ),
              SizedBox(
                height: 15,
              ),
              CommonTextFormField(
                type: TextFieldPage.loginPassword,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'Re Type Password',
                prefix: Image.asset(
                  AppImages.mailIcon,
                  color: AppColors.white,
                ),
                suffix: SizedBox(),
                controller: passwordConfirmController,
                inputTitle: 're type password',
                inputType: KeyBoardType.TEXT,
                validationType: ValidationType.REPEAT_PASSWORD,
                myUserNameFocusNode: _passwordConfirmFocusNode,
              ),

              Expanded(child: Container()),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, NavigationRoutes.SIGN_UP_SUCCESS_SCREEN);
                  },
                  child: PrimaryButtonOrange(
                    buttonText: 'SIGN UP',
                    opacity: 1,
                    buttonWidthRatio: 0.5,
                  )),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an Account ?",
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
