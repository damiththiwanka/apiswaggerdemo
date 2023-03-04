import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/build_input_filed_with_dropdown.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:base3/src/widgets/input_filed_lable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ChargingStatusEntryScreen extends BaseView {

  @override
  _ChargingStatusEntryScreenState createState() => _ChargingStatusEntryScreenState();
}

class _ChargingStatusEntryScreenState extends BaseViewState {

  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(AppImages.appBarBackButton, width: 60,),
            middle: Text('Charge', style: AppTextStyles().primaryTextColorFont28TextStyle(),),
          ),
        ),
      ),
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
              offset: Offset(5,5),
            ),
          ],
          // color: colors.AppColors.buttonColor,
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 470,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(15),
                    color: AppColors.primaryGrayButtonGradientColorSecond,
                      gradient: LinearGradient(
                        colors: [
                          AppColors.backgroundGradientColorThird,
                          AppColors.backgroundGradientColorSecond,
                          AppColors.backgroundGradientColorFirst,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "AUTO MODE",
                              style: AppTextStyles().primaryColorFont16TextStyle(),
                            ),

                            Expanded(child: Container()),

                            Container(
                              width: 20,
                              height: 20,
                              child: Image.asset(AppImages.plugIcon),),

                            SizedBox(width: 11,),

                            Text("NOT CONNECTED",
                              style: AppTextStyles().offWhiteColorFont14TextStyle(),
                            ),
                          ],

                        ),

                        Expanded(child: Container()),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text(
                              "Voltage",
                              style: AppTextStyles().offWhiteColorFont16TextStyle(),
                            ),


                            Container(
                              width: 150,
                              height: 200,
                              child: Image.asset(AppImages.chargingStatusImage),),


                            Text("Temperature",
                              style: AppTextStyles().offWhiteColorFont16TextStyle(),
                            ),
                          ],

                        ),


                        Center(
                          child: Text(
                            "Charging In",
                            style: AppTextStyles().offWhiteColorFont14TextStyle(),
                          ),
                        ),

                        SizedBox(height: 11,),

                        Center(
                          child: Text(
                            "2 hr 30 min",
                            style: AppTextStyles().offWhiteColorFont16TextStyle(),
                          ),
                        ),

                        Expanded(child: Container()),

                        Text(
                          "Sam’s charging schedule",
                          style: AppTextStyles().offWhiteColorFont16TextStyle(),
                        ),

                        SizedBox(height: 20,),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: MediaQuery.of(context).size.width * 0.4 - 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Morning charge",
                                    style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                  ),

                                  SizedBox(height: 6,),

                                  Text(
                                    "6 : 30 am - 10 : 30 pm",
                                    style: AppTextStyles().offWhiteColorFont14BoldTextStyle(),
                                  ),

                                  Text(
                                    "Mon - Fri",
                                    style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Night charge",
                                    style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                  ),

                                  SizedBox(height: 6,),

                                  Text(
                                    "6 : 30 am - 10 : 30 pm",
                                    style: AppTextStyles().offWhiteColorFont14BoldTextStyle(),
                                  ),

                                  Text(
                                    "Mon - Fri",
                                    style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ],

                        ),

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SlideAction(
                  onSubmit: () {
                    Future.delayed(
                      Duration(seconds: 1),
                          () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            NavigationRoutes.WELCOME_SCREEN,
                                (Route<dynamic> route) => false);
                      },
                    );
                    //context.read<ProfileBloc>().add(LogoutSlide(isLogout: true));
                    // Navigator.of(context)
                    //     .popUntil(ModalRoute.withName(NavigationRoutes.LOGIN_PAGE));
                  },
                  text: "CHARGE NOW",
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: AppColors.offWhiteColor,
                      fontWeight: FontWeight.normal,
                  fontFamily: 'Open Sans'),
                  height: 55,
                  sliderButtonIconPadding: 15,
                  sliderButtonYOffset: -8,
                  outerColor: Colors.black.withOpacity(0.1),
                  innerColor: AppColors.primaryOrangeButtonGradientColorSecond,
                ),
              ),

            SizedBox(height: 40,),

            Center(child: PrimaryButtonGrey(buttonText: 'DELAY CHARGE', opacity: 1, buttonWidthRatio: 0.4,)),
            ],
          ),
        ),
      ),
    );
  }
}
