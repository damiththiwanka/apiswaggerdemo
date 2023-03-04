// import 'package:base3/src/blocs/login/login_bloc.dart';
// import 'package:base3/src/helpers/translation/all_translations.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:base3/src/values/app.constants.dart';
// import 'package:base3/src/values/colors.dart';
// import 'package:formz/formz.dart';
//
// import '../buttons/primary_button_grey.dart';
//
//
// Widget loginButton(TextEditingController myPsWrdController, TextEditingController myUsrNameController, GlobalKey<FormState> loginFormKey) {
//   return BlocBuilder<LoginBloc, LoginState>(
//     builder: (context, state) {
//       return Positioned(
//         top: AppConstants.adaptiveScreen.setHeight(550),
//         child: Container(
//           width: AppConstants.adaptiveScreen.setWidth(428),
//           child: Center(
//             child: state.status.isSubmissionInProgress
//                 ? CircularProgressIndicator(color: AppColors.primaryColor,)
//                 : GestureDetector(
//               onTap: () {
//                 if (loginFormKey.currentState!.validate()) {
//                   context.read<LoginBloc>().add(FormSubmitted(
//                       myUsrNameController.text,
//                       myPsWrdController.text));
//                 }
//               },
//               // child: PrimaryButton(
//               //   buttonText:
//               //   AppLocalizations.of(context)!.translate("login") ??
//               //       "", buttonWidthRatio: 0.5, opacity: 1,
//               // ),
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }


///
///
///
///
///
///
///
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/widgets/buttons/login_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Project SLM_Wallet
/// Created by sahan on 11/16/21 09:19
class LoginButtonWidget extends StatefulWidget {

  final TextEditingController ? myPsWrdController;
  final TextEditingController ? myUsrNameController;
  final GlobalKey<FormState> ? loginFormKey;
  // final Function ? function;
  final FocusNode? myUserNameFocusNode;
  LoginButtonWidget( this.myPsWrdController, this.myUsrNameController, this.loginFormKey, this.myUserNameFocusNode);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          // color: Colors.yellow,
          height: MediaQuery.of(context).size.height * 0.072,
          width: AppConstants.adaptiveScreen.setWidth(428),
          child: Center(
            child:
            GestureDetector(
              onTap: () {
                //widget.myUserNameFocusNode!.requestFocus();
                if (widget.loginFormKey!.currentState!.validate()) {
                  // context.read<LoginBloc>().add(FormSubmitted(
                  //     widget.myUsrNameController!.text,
                  //     widget.myPsWrdController!.text));



                  // UserLoginRequest
                  // loginRequest =
                  // UserLoginRequest();
                  // loginRequest.username =
                  //     widget.myUsrNameController!.text
                  //         .trim()
                  //         .toString();
                  // loginRequest.password =
                  //     widget.myPsWrdController!.text
                  //         .trim()
                  //         .toString();

                  // loginRequest.purpose =
                  //     AppStrings.MOBILE_VERIFICATION;

                 // widget.function!(context);
                 //  BlocProvider.of<LoginBloc>
                 //    (context)
                 //      .add(FormSubmitted(loginRequest.username,loginRequest.password)
                 //  );
                  // widget.myPsWrdController!.text="";
                  // widget.myUsrNameController!.text="";
                  //widget.loginFormKey!.currentState!.reset();
                  //widget.myUserNameFocusNode!.requestFocus();
                }
              },
              child: LoginButton(
                buttonText: "Next",
              ),
            ),
          ),
        );
      },
    );
  }
}

