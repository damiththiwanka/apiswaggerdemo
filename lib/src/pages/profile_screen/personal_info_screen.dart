import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends BaseView {

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends BaseViewState {
  final myNameController = TextEditingController();
  final _myNameFocusNode = FocusNode();
  final emailController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final myMobileNumberController = TextEditingController();
  final _myMobileNumberFocusNode = FocusNode();
  final myBirthdayController = TextEditingController();
  final _myBirthdayFocusNode = FocusNode();

  String userPicUrl = "https://picsum.photos/250?image=9";


  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 110,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(AppImages.appBarBackButton, width: 60, height: 30,),
            middle: Text('Personal Information', style: AppTextStyles().primaryTextColorFont22TextStyle(),),
          ),
          // Row(
          //   children: [
          //     Container(
          //       color: Colors.blue,
          //       height: 40,
          //       width: 40,
          //     ),
          //
          //      Text("Add A Car",
          //      style: AppTextStyles().welcomeTextStyle(),
          //      ),
          //   ],
          // ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.1,
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

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ///
                // CircleAvatar(
                //     radius: 70,
                //     backgroundColor: AppColors.fieldGreyColor,
                //     child: CachedNetworkImage(
                //       fit: BoxFit.contain,
                //       height: (MediaQuery.of(context)
                //           .size
                //           .height *
                //           0.23) *
                //           0.65,
                //       imageUrl: userPicUrl,
                //       imageBuilder:
                //           (context, imageProvider) =>
                //           CircleAvatar(
                //             backgroundImage:
                //             imageProvider,
                //             radius: 50,
                //           ),
                //       placeholder: (context, url) =>  SizedBox(width: 20,height: 20, child:CircularProgressIndicator() ,) ,
                //       errorWidget:
                //           (context, url, error) =>
                //           CircleAvatar(
                //             backgroundColor: Colors.transparent,
                //             backgroundImage: AssetImage(
                //                 AppImages
                //                     .userIcon),
                //             radius: 70,
                //           ),
                //     )),

                SizedBox(height: 50,),

                /// name field
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
                  controller: myNameController,
                  inputTitle: 'name',
                  inputType: KeyBoardType.TEXT,
                  validationType: ValidationType.NORMAL,
                  myUserNameFocusNode: _myNameFocusNode,
                ),

                SizedBox(
                  height: 20,
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
                  height: 20,
                ),

                CommonTextFormField(
                  type: TextFieldPage.mobile,
                  maxLength: 12,
                  onSubmitComplete: (String a) {},
                  hintText: 'Phone number',
                  prefix: Image.asset(
                    AppImages.mailIcon,
                    color: AppColors.primaryGrayButtonGradientColorFirst,
                  ),
                  suffix: SizedBox(),
                  controller: myMobileNumberController,
                  inputTitle: 'phone number',
                  inputType: KeyBoardType.NUM,
                  validationType: ValidationType.MOBILE,
                  myUserNameFocusNode: _myMobileNumberFocusNode,
                ),


                SizedBox(
                  height: 20,
                ),


                CommonTextFormField(
                  type: TextFieldPage.name,
                  maxLength: 12,
                  onSubmitComplete: (String a) {},
                  hintText: 'Birth Day',
                  prefix: Image.asset(
                    AppImages.mailIcon,
                    color: AppColors.primaryGrayButtonGradientColorFirst,
                  ),
                  suffix: SizedBox(),
                  controller: myBirthdayController,
                  inputTitle: 'birth day',
                  inputType: KeyBoardType.TEXT,
                  validationType: ValidationType.NORMAL,
                  myUserNameFocusNode: _myBirthdayFocusNode,
                ),

                SizedBox(
                  height: 180,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Container()),

                    GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: PrimaryButtonBlack(buttonText: 'CANCEL', opacity: 1, buttonWidthRatio: 0.5,)),

                    SizedBox(width: 25,),

                    GestureDetector(
                        onTap: (){Navigator.pushNamed(context, NavigationRoutes.ADD_A_CAR_ENTRY_SCREEN);},
                        child: PrimaryButtonGrey(buttonText: 'SAVE', opacity: 1, buttonWidthRatio: 0.5,)),

                    Expanded(child: Container()),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
