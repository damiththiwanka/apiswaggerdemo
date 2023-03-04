/// Project sl_login
/// Create by Madushanka Madakumbura on 11/1/21 13:30
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:after_init/after_init.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/helpers/storage/preferences.dart';
import 'package:base3/src/helpers/translation/all_translations.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/animation/custom_rotation_transition.dart';
import 'package:base3/src/widgets/animation/custom_scale_transition.dart';
import 'package:base3/src/widgets/background/common_background_lower_component.dart';
import 'package:base3/src/widgets/background/common_background_upper_component.dart';
import 'package:base3/src/widgets/buttons/plain_long_button_with_only_border.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_long_orange.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

GetIt locator = GetIt.instance;

abstract class BaseView extends StatefulWidget {
  BaseView({Key? key}) : super(key: key);
}

abstract class BaseViewState extends State<BaseView>
    with AfterInitMixin<BaseView> {
  var currentLangCode;
  double sinhalaFontSize = 18;

  ///common variables
  Timer? _timer;
  var adaptiveScreen;
  var textStyles = AppTextStyles();
  UpperComponent upperComponent = UpperComponent();
  LowerComponent lowerComponent = LowerComponent();
  final oCcy = new NumberFormat("#,##0.00", "en_US");
  Random? random;

  /// Random Image Generator
  dynamic listImages = [
    // AppImages.userSuccess1,
    // AppImages.userSuccess2,
    // AppImages.userSuccess3,
  ];

  var commonTopHeightDefault = 150;

  String env = '';

  Image img() {
    int min = 0;
    int max = listImages.length - 1;
    random = new Random();
    int r = min + random!.nextInt(max - min);
    String imageName = listImages[r].toString();
    return Image.asset(imageName);
  }

  ///init state
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      print("Call Finally");
      // screenCapturingDisable();
     // ErrorMapper().getCurrentLangCode();
      //ErrorMapper().getError();
     // locator<TokenDataSource>().clearMemoizer();
    });
    // getEnvironment();
    super.initState();
  }

  ///after init state
  @override
  void didInitState() {
    ScreenUtil.init(
      context,
      designSize: Size(428, 926),
    );
    adaptiveScreen = ScreenUtil();
  }

  @override
  Widget build(BuildContext context) {
    YYDialog.init(context);
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        onLongPressEnd: (_) {
          _timer?.cancel();
        },
        onLongPress: () => {
              if (env != "4")
                {
                  _timer = Timer(Duration(seconds: 2), () {
                    //Navigator.pushNamed(context, NavigationRoutes.LOGGER_VIEW);
                  })
                }
            },
        child: rootWidget(context));
  }

  Widget rootWidget(BuildContext context);

  // ///This is for show the loading
  // showLoadingDialog(BuildContext context) async {
  //   return loadCustomLoader(context);
  // }

  // ///This is for hide the loading
  // hideLoadingDialog(BuildContext context) {
  //   return hideCustomLoader(context);
  // }

  ///This is a pop up to show a Error message
  ///params [body] String , [error] Object
  openErrorAlertBox({String? title, Object? error}) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0,
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: AppColors.blueBackgroundColor2,
                    width: adaptiveScreen.setWidth(330),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: adaptiveScreen.setWidth(100),
                              height: adaptiveScreen.setHeight(100),
                             // child: Image.asset(AppImages.errorScreenImage),
                            ),
                            SizedBox(height: 5),
                            Text(
                              //allTranslations.text('Success'),
                              'Error',
                             // style: textStyles.textWhiteFont22(),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                        // Container(
                        //     width: adaptiveScreen.setWidth(330),
                        //     padding: EdgeInsets.only(
                        //         left: adaptiveScreen.setWidth(10),
                        //         right: adaptiveScreen.setWidth(10)),
                        //     child: FutureBuilder<String>(
                        //       future: ErrorMapper().getError(error),
                        //       // function where you call your api
                        //       builder: (BuildContext context,
                        //           AsyncSnapshot<String> snapshot) {
                        //         // AsyncSnapshot<Your object type>
                        //         if (snapshot.connectionState !=
                        //             ConnectionState.waiting) {
                        //           if (snapshot.hasError)
                        //             return Center(
                        //                 child:
                        //                 Text('Error: ${snapshot.error}'));
                        //           else
                        //             return Text(
                        //               snapshot.data!,
                        //               //allTranslations.text('Successfully recovered password'),
                        //
                        //               style: textStyles.subTextLightBlueStyle(),
                        //               textAlign: TextAlign.center,
                        //             );
                        //         } else
                        //           {
                        //             return Center(
                        //                 child:
                        //                 Text('Error: ${snapshot.error}'));
                        //           }
                        //       },
                        //     )),
                        SizedBox(
                          height: 30,
                        ),
                        // Center(
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       if (ErrorMapper().getErrorCode(error) == "440") {
                        //         print("back to login");
                        //         context
                        //             .read<ProfileBloc>()
                        //             .add(LogoutSlide(isLogout: true));
                        //
                        //         Navigator.of(context).pushNamedAndRemoveUntil(
                        //             NavigationRoutes.WELCOME_SCREEN,
                        //             (Route<dynamic> route) => false);
                        //       } else {
                        //         Navigator.pop(context);
                        //       }
                        //     },
                        //     child: PrimaryButton(
                        //       buttonText: 'OK',
                        //       opacity: 0.0,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  /// Confirmation screen with ok and cancel options
  openConfirmationAlertBox(
      {String? body, String? route, Function()? onTapButton}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          contentPadding: EdgeInsets.all(2),
          content: Container(
            child: ClipRRect(
              child: Container(
                width: 300,
                child: Stack(
                  children: [
                    Positioned(
                      top: AppConstants.adaptiveScreen
                          .setHeight(commonTopHeightDefault + 120),
                      left: 1,
                      right: 1,
                      child: Container(
                        child: Stack(
                          children: [
                            Wrap(
                              spacing: 2,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: AppConstants.adaptiveScreen
                                          .setHeight(400),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppColors.primaryColor,
                                        ),
                                        constraints:
                                            BoxConstraints.expand(width: 300),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///custom app bar for testing purpose : End

                    Positioned(
                      top: AppConstants.adaptiveScreen
                          .setHeight(commonTopHeightDefault),
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: AppConstants.adaptiveScreen.setWidth(200),
                        height: AppConstants.adaptiveScreen.setHeight(200),
                        child: Image.asset(
                          AppImages.backgroundRing,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),

                    Positioned(
                      top: AppConstants.adaptiveScreen
                          .setHeight(commonTopHeightDefault + 20),
                      right: 0,
                      left: 0,
                      child: Container(
                        width: AppConstants.adaptiveScreen.setWidth(200),
                        height: AppConstants.adaptiveScreen.setHeight(200),
                        child: Image.asset(AppImages.beginJourneyPerson),
                      ),
                    ),

                    Positioned(
                      top: AppConstants.adaptiveScreen
                          .setHeight(commonTopHeightDefault + 220),
                      right: 0,
                      left: 0,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: adaptiveScreen.setWidth(300),
                              child: Text(
                                AppLocalizations.of(context)!
                                        .translate('confirm') ??
                                    "",
                               // style: AppTextStyles().textWhiteFont18(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: adaptiveScreen.setWidth(300),
                              child: Text(
                                body!,
                                //style: AppTextStyles().subTextLightBlueStyle(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 300,
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.blueBackgroundColor2
                                              .withOpacity(0.99),
                                          spreadRadius: 5,
                                          blurRadius: 30,
                                          offset: Offset(5, -5),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 20,
                                  ),

                                  ///Button
                                  Center(
                                    child: GestureDetector(
                                      onTap: onTapButton,
                                      child: Container(
                                        child: PrimaryButtonOrange(
                                          buttonWidthRatio: 0.32,
                                          buttonText: 'OK',
                                          opacity: 0,
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),

                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        child: PlainLongButtonWithOnlyBorder(
                                          buttonWidthRatio: 0.32,
                                          buttonText: 'Cancel',
                                          buttonBorderColor:
                                              AppColors.borderColor,
                                          buttonTextColor: AppColors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  ///This is a pop up to show a successful message
  ///params [body] String , [route] String
  openSuccessAlertBox({String? body, String? route}) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0,
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            content: Container(
              width: adaptiveScreen.setWidth(330),
              height: adaptiveScreen.setHeight(500),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: adaptiveScreen.setHeight(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: AppColors.blueBackgroundColor2,
                            width: adaptiveScreen.setWidth(330),
                            height: adaptiveScreen.setHeight(500),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    width: adaptiveScreen.setWidth(400),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: adaptiveScreen.setHeight(250),
                                          width: adaptiveScreen.setWidth(400),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color:
                                                AppColors.blueBackgroundColor2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                /// image
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: adaptiveScreen.setWidth(250),
                                    height: adaptiveScreen.setHeight(250),
                                    // child: CustomRotationTransition(
                                    //     child: Image.asset(
                                    //   AppImages.loginCircleBackground1,
                                    //   fit: BoxFit.cover,
                                    // )),
                                  ),
                                ),

                                Positioned(
                                  top: 20,
                                  child: Center(
                                    child: Container(
                                      width: adaptiveScreen.setWidth(330),
                                      height: adaptiveScreen.setHeight(150),
                                      child:
                                          CustomScaleTransition(child: img()),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.blueBackgroundColor2
                                              .withOpacity(0.99),
                                          spreadRadius: 1,
                                          blurRadius: 80,
                                          offset: Offset(10, -5),
                                        ),
                                      ],
                                    ),
                                    width: adaptiveScreen.setWidth(330),
                                    height: adaptiveScreen.setHeight(250),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          //allTranslations.text('Success'),
                                          AppLocalizations.of(context)!
                                                  .translate("success") ??
                                              "",
                                          // style:
                                          //     AppTextStyles().largeWhiteText(),
                                        ),
                                        SizedBox(height: 0),
                                        Container(
                                          width: adaptiveScreen.setWidth(400),
                                          padding: EdgeInsets.only(
                                              left: adaptiveScreen.setWidth(10),
                                              right:
                                                  adaptiveScreen.setWidth(10)),
                                          child: Text(
                                            //allTranslations.text('Successfully recovered password'),
                                            body!,
                                            // style: AppTextStyles()
                                            //     .subTextLightBlueStyle(),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        SizedBox(height: 20,),

                                        Expanded(
                                            child: Container()),



                                        Container(
                                          width: adaptiveScreen.setWidth(330),
                                          child: Center(
                                            child: GestureDetector(
                                              onTap: () {
                                                if (route == "" || route == null) {
                                                  Navigator.pop(context);
                                                } else if (route == NavigationRoutes.WELCOME_SCREEN) {
                                                  Navigator.pushNamedAndRemoveUntil(
                                                      context,
                                                      NavigationRoutes.WELCOME_SCREEN,
                                                      (route) => false);
                                                } else {
                                                  Navigator.pushReplacementNamed(context, route);
                                                }
                                              },
                                              child: PrimaryButtonOrange(
                                                buttonText: 'OK', opacity: 1, buttonWidthRatio: 0.5,
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                            child: Container()),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))),
                ],
              ),
            ),
          );
        });
  }


  /// confirmation alert box for the deleting payee ---- used in the send money select option page
  // openConfirmationAlertBox({String? body, String? route, required Function? onTapButtonOne, required Function? onTapButtonTwo}) {
  //   return showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     barrierColor: Colors.black.withOpacity(0.7),
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         contentPadding: EdgeInsets.all(0),
  //         content: Container(
  //           child: ClipRRect(
  //             child: Container(
  //               width: 300,
  //               child: Stack(
  //                 children: [
  //                   Positioned(
  //                     top: AppConstants.adaptiveScreen
  //                         .setHeight(commonTopHeightDefault + 120),
  //                     left: 1,
  //                     right: 1,
  //
  //                     child: Container(
  //
  //                       child: Stack(
  //                         children: [
  //                           Container(
  //                             height:
  //                             AppConstants.adaptiveScreen.setHeight(320),
  //
  //                             decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(15),
  //                               color: AppColors.primaryColor,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //
  //                   ///custom app bar for testing purpose : End
  //
  //                   Positioned(
  //                     top: AppConstants.adaptiveScreen
  //                         .setHeight(commonTopHeightDefault),
  //                     right: 0,
  //                     left: 0,
  //                     child: Container(
  //                       padding: EdgeInsets.all(20),
  //                       width: AppConstants.adaptiveScreen.setWidth(200),
  //                       height: AppConstants.adaptiveScreen.setHeight(200),
  //                       child: Image.asset(AppImages.backgroundRing,height: 50,width: 50,),
  //                     ),
  //                   ),
  //
  //                   Positioned(
  //                     top: AppConstants.adaptiveScreen
  //                         .setHeight(commonTopHeightDefault + 20),
  //                     right: 0,
  //                     left: 0,
  //                     child: Container(
  //                       width: AppConstants.adaptiveScreen.setWidth(200),
  //                       height: AppConstants.adaptiveScreen.setHeight(200),
  //                       child: Image.asset(AppImages.beginJourneyPerson),
  //                     ),
  //                   ),
  //
  //
  //                   Positioned(
  //                     top: AppConstants.adaptiveScreen
  //                         .setHeight(commonTopHeightDefault + 220),
  //                     right: 0,
  //                     left: 0,
  //                     child: Container(
  //                       child: Column(
  //                         children: [
  //                           Container(
  //                             width: adaptiveScreen.setWidth(300),
  //                             child: Text(
  //                               'Confirm',
  //                               style: AppTextStyles().textWhiteFont18(),
  //                               textAlign: TextAlign.center,
  //                             ),
  //                           ),
  //
  //                           SizedBox(height: 10,),
  //
  //                           Container(
  //                             width: adaptiveScreen.setWidth(300),
  //                             child: Text(
  //                               body!,
  //                               style: AppTextStyles().subTextLightBlueStyle(),
  //                               textAlign: TextAlign.center,
  //                             ),
  //                           ),
  //
  //                           SizedBox(height: 20,),
  //
  //                           Container(
  //                             width: 300,
  //                             height: 100,
  //                             child: Row(
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               children: [
  //                                 Container(
  //                                   height: 50,
  //                                   decoration: BoxDecoration(
  //                                     boxShadow: [
  //                                       BoxShadow(
  //                                         color: AppColors.blueBackgroundColor2
  //                                             .withOpacity(0.99),
  //                                         spreadRadius: 5,
  //                                         blurRadius: 30,
  //                                         offset: Offset(5, -5),
  //                                       ),
  //                                     ],
  //                                   ),
  //                                 ),
  //
  //                                 SizedBox(
  //                                   width: 20,
  //                                 ),
  //
  //                                 ///Button
  //                                 Center(
  //                                   child: GestureDetector(
  //                                     onTap: () {
  //                                 onTapButtonOne!;
  //                                 },
  //                                     child: Container(
  //                                       child: PrimaryButton(
  //                                         buttonWidthRatio: 0.33,
  //                                         buttonText: 'OK',
  //                                         opacity: 0,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ),
  //
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //
  //                                 Center(
  //                                   child: GestureDetector(
  //                                     onTap: () {
  //                                 onTapButtonTwo!;
  //                                 },
  //                                     child: Container(
  //                                       child: PlainLongButtonWithOnlyBorder(
  //                                         buttonWidthRatio: 0.33,
  //                                         buttonText: 'Cancel',
  //                                         buttonBorderColor: AppColors.borderColor,
  //                                         buttonTextColor: AppColors.white,),
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 SizedBox(
  //                                   height: 15,
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );}

  ///This is a pop up to show a successful message
  ///params [body] String , [title] String
  openAlertBox({String? body, String? title}) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (BuildContext context) {
          return AlertDialog(
            elevation: 0,
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            content: Container(
              width: adaptiveScreen.setWidth(330),
              height: adaptiveScreen.setHeight(500),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: adaptiveScreen.setHeight(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: AppColors.blueBackgroundColor2,
                            width: adaptiveScreen.setWidth(330),
                            height: adaptiveScreen.setHeight(450),
                            child: Stack(
                              children: [
                                // Positioned(
                                //   child: Container(
                                //     width: adaptiveScreen.setWidth(400),
                                //     child: Stack(
                                //       children: [
                                //         Container(
                                //           height: adaptiveScreen.setHeight(300),
                                //           width: adaptiveScreen.setWidth(400),
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(15),
                                //             color:
                                //                 AppColors.blueBackgroundColor2,
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: adaptiveScreen.setWidth(200),
                                    height: adaptiveScreen.setHeight(200),
                                    // child: CustomRotationTransition(
                                    //     child: Image.asset(
                                    //   AppImages.loginCircleBackground1,
                                    //   fit: BoxFit.fitWidth,
                                    // )),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  child: Center(
                                    child: Container(
                                      width: adaptiveScreen.setWidth(300),
                                      height: adaptiveScreen.setHeight(150),
                                      child:
                                          CustomScaleTransition(child: img()),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.blueBackgroundColor2
                                              .withOpacity(0.99),
                                          spreadRadius: 1,
                                          blurRadius: 80,
                                          offset: Offset(10, -5),
                                        ),
                                      ],
                                    ),
                                    width: adaptiveScreen.setWidth(330),
                                    height: adaptiveScreen.setHeight(250),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(child: Container(),),
                                        Text(
                                          //allTranslations.text('Success'),
                                          title!,
                                          // style:
                                          //     AppTextStyles().largeWhiteText(),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: adaptiveScreen.setWidth(400),
                                          padding: EdgeInsets.only(
                                              left: adaptiveScreen.setWidth(10),
                                              right:
                                                  adaptiveScreen.setWidth(10)),
                                          child: Text(
                                            //allTranslations.text('Successfully recovered password'),
                                          body!,
                                            // style: AppTextStyles()
                                            //     .subTextLightBlueStyle(),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(child: Container(),),
                                        SizedBox(height: 20,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))),

                  ///Button
                  Positioned(
                    bottom: adaptiveScreen.setHeight(20),
                    child: Container(
                      width: adaptiveScreen.setWidth(330),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: PrimaryButtonOrange(
                            buttonText: 'OK', opacity: 1, buttonWidthRatio: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  // void getEnvironment() async {
  //   final sharedPrefService = await SharedPreferencesService.instance;
  //   env = await sharedPrefService!.readDate("ENV") as String;
  //   env = env.length <= 0 ? "3" : env;
  // }

  /// screen shot disable
  // screenCapturingDisable() async {
  //   await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  //   print('screen capturing disabled');
  // }
}
