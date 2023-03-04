import 'package:base3/base_view.dart';
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:base3/src/widgets/login_widgets/login_button.dart';

class SignInEntryScreen extends BaseView {
  @override
  _SignInEntryScreenState createState() => _SignInEntryScreenState();
}

class _SignInEntryScreenState extends BaseViewState {
  final myUsrNameController = TextEditingController();
  final _myUserNameFocusNode = FocusNode();
  final passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  bool isChecked = false;

  var isAgreedResponse;

  final GlobalKey<FormState> _loginFormKey = GlobalKey();

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
          child: Form(
            key: _loginFormKey,
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
                  "Sign In",
                  style: AppTextStyles().welcomeTextStyle(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome Back to Volt Charge",
                  style: AppTextStyles().primaryColorLightFont16TextStyle(),
                ),
                SizedBox(
                  height: 30,
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
                  controller: myUsrNameController,
                  inputTitle: 'email',
                  inputType: KeyBoardType.EMAIL,
                  validationType: ValidationType.EMAIL,
                  myUserNameFocusNode: _myUserNameFocusNode,
                ),
                SizedBox(
                  height: 15,
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
                  controller: passwordController,
                  inputTitle: 'password',
                  inputType: KeyBoardType.TEXT,
                  validationType: ValidationType.PASSWORD,
                  myUserNameFocusNode: _passwordFocusNode,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    RoundCheckBox(
                      borderColor: Colors.orange,
                      isChecked: getEnabled(false),
                      onTap: (selected) {},
                      size: 20,
                      uncheckedColor: AppColors.grey,
                      checkedColor:
                          AppColors.primaryOrangeButtonGradientColorFirst,
                      checkedWidget: Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 10,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Remember my Password",
                      style: AppTextStyles().primaryColorLightFont16TextStyle(),
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context,
                            NavigationRoutes.FORGOT_PASSWORD_ENTRY_SCREEN);
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: AppTextStyles().primaryColorFont16TextStyle(),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
                Expanded(child: Container()),
                GestureDetector(
                    onTap: () {
                      if (_loginFormKey.currentState!.validate()) {
                        Navigator.pushNamed(
                            context, NavigationRoutes.SELECT_A_CAR_SCREEN);

                        // BlocProvider.of<LoginBloc>(context).add(FormSubmitted(
                        //     myUsrNameController.text, passwordController.text));
                      }
                    },
                    child: PrimaryButtonOrange(
                      buttonText: 'SIGN IN',
                      opacity: 1,
                      buttonWidthRatio: 0.5,
                    )),
                // LoginButtonWidget(
                //   myUsrNameController,
                //   myUsrNameController,
                //   _loginFormKey,
                //   // showLoadingDialog,
                //   _myUserNameFocusNode,
                // ),
                Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an Account ?",
                      style: AppTextStyles().offWhiteColorFont16TextStyle(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, NavigationRoutes.SIGN_UP_ENTRY_SCREEN);
                      },
                      child: Text(
                        "SIGN UP",
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
