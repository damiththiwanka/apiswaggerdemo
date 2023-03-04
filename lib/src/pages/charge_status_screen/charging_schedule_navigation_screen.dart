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

class ChargingScheduleNavigationScreen extends BaseView {
  @override
  _ChargingScheduleNavigationScreenState createState() => _ChargingScheduleNavigationScreenState();
}

class _ChargingScheduleNavigationScreenState extends BaseViewState {
  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(
              AppImages.appBarBackButton,
              width: 60,
            ),
            middle: Text(
              'Charge',
              style: AppTextStyles().primaryTextColorFont28TextStyle(),
            ),
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
              offset: Offset(5, 5),
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
                  height: 400,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.grey,
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
                        color: AppColors.primaryGrayButtonGradientColorFirst
                            .withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(
                          1,
                          1,
                        ),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          child: Image.asset(AppImages.chargingStatusImage),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "CREATE A SCHEDULE",
                          style: AppTextStyles().offWhiteColorFont16TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Expanded(child: Container()),

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
              SizedBox(
                height: 40,
              ),
              Center(
                  child: PrimaryButtonGrey(
                buttonText: 'DELAY CHARGE',
                opacity: 1,
                buttonWidthRatio: 0.4,
              )),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
