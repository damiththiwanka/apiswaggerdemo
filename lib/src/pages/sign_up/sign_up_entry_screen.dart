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
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpEntryScreen extends BaseView {
  @override
  _SignUpEntryScreenState createState() => _SignUpEntryScreenState();
}

class _SignUpEntryScreenState extends BaseViewState {
  final myUsrNameController = TextEditingController();
  final _myUserNameFocusNode = FocusNode();
  final emailController = TextEditingController();
  final _emailFocusNode = FocusNode();
  bool isChecked = false;

  var isAgreedResponse;

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
                "Welcome to Volt Charge",
                style: AppTextStyles().primaryColorLightFont16TextStyle(),
              ),
              SizedBox(
                height: 30,
              ),
              CommonTextFormField(
                type: TextFieldPage.name,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'Name',
                prefix: Image.asset(
                  AppImages.userIcon,
                  color: AppColors.primaryGrayButtonGradientColorFirst,
                ),
                suffix: SizedBox(),
                controller: myUsrNameController,
                inputTitle: 'name',
                inputType: KeyBoardType.TEXT,
                validationType: ValidationType.NORMAL,
                myUserNameFocusNode: _myUserNameFocusNode,
              ),
              SizedBox(
                height: 15,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundCheckBox(
                    borderColor: Colors.orange,
                    isChecked: getEnabled(false),
                    onTap: (selected) {},
                    size: 20,
                    uncheckedColor: AppColors.grey,
                    checkedColor: AppColors.primaryOrangeButtonGradientColorFirst,
                    checkedWidget: Icon(
                      Icons.check,
                      color: AppColors.white,
                      size: 10,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "I Agree to the",
                    style: AppTextStyles().primaryColorLightFont16TextStyle(),
                  ),

                  SizedBox(width: 15,),

                  Text(
                    "Terms & Conditions",
                    style: AppTextStyles().primaryColorFont16TextStyle(),
                  ),
                ],
              ),
              Expanded(child: Container()),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, NavigationRoutes.SIGN_UP_PASSWORD_SETUP_SCREEN);
                  },
                  child: PrimaryButtonOrange(
                    buttonText: 'NEXT',
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

  getEnabled(bool isAgree) {
    if (isChecked == false) {
      return isChecked;
    } else {
      return !isChecked;
    }
  }
}
