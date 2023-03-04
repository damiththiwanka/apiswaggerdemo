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

class ScheduleStatusEntryScreen extends BaseView {
  @override
  _ScheduleStatusEntryScreenState createState() => _ScheduleStatusEntryScreenState();
}

class _ScheduleStatusEntryScreenState extends BaseViewState {

  bool light = true;

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
              'Schedule',
              style: AppTextStyles().primaryTextColorFont28TextStyle(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.2,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Text(
              "Sam’s charging schedule",
              style: AppTextStyles().offWhiteColorFont18TextStyle(),
            ),

                SizedBox(height: 11),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auto Mode",
                      style: AppTextStyles().offWhiteColorFont16TextStyle(),
                    ),

                    SizedBox(width: 22),

                    Text(
                      "Activated",
                      style: AppTextStyles().primaryColorFont16TextStyle(),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                Center(
                  child: Container(
                    height: 200,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:  MediaQuery.of(context).size.width - 50,
                          height: 200,
                          child: Image.asset(AppImages.scheduleStatusImage),),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Text(
                  "Next Charge will start in",
                  style: AppTextStyles().offWhiteColorFont14BoldTextStyle(),
                ),

                SizedBox(height: 11),

                Text(
                  "2 Hours 30 Min",
                  style: AppTextStyles().primaryColorFont22TextStyle(),
                ),

                SizedBox(height: 22),

                Center(
                  child: Container(
                    height: 120,
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
                          vertical: 6, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Morning charge",
                                style: AppTextStyles().offWhiteColorFont16TextStyle(),
                              ),

                              Expanded(child: Container()),

                              Container(
                                width: 50,
                                height: 25,
                                child: Switch(
                                  // This bool value toggles the switch.
                                  value: light,
                                  activeColor: AppColors.primaryOrangeButtonGradientColorSecond,
                                  onChanged: (bool value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      light = value;
                                    });
                                  },
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 20,),

                          Container(
                            width: MediaQuery.of(context).size.width -50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "6 : 30 am - 10 : 30 pm",
                                  style: AppTextStyles().offWhiteColorFont14BoldTextStyle(),
                                ),


                                SizedBox(height: 6,),

                                Text(
                                  "Mon , Wed , Fri",
                                  style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                ),

                                SizedBox(height: 6,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "10 kwh",
                                      style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                    ),

                                    Text(
                                      "70% - 80%",
                                      style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 22),

                Center(
                  child: Container(
                    height: 120,
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
                          vertical: 6, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Night charge",
                                style: AppTextStyles().offWhiteColorFont16TextStyle(),
                              ),

                              Expanded(child: Container()),

                              Container(
                                width: 50,
                                height: 25,
                                child: Switch(
                                  // This bool value toggles the switch.
                                  value: light,
                                  activeColor: AppColors.primaryOrangeButtonGradientColorSecond,
                                  onChanged: (bool value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      light = value;
                                    });
                                  },
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 20,),

                          Container(
                            width: MediaQuery.of(context).size.width -50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "6 : 30 am - 10 : 30 pm",
                                  style: AppTextStyles().offWhiteColorFont14BoldTextStyle(),
                                ),


                                SizedBox(height: 6,),

                                Text(
                                  "Mon , Wed , Fri",
                                  style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                ),

                                SizedBox(height: 6,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "10 kwh",
                                      style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                    ),

                                    Text(
                                      "70% - 80%",
                                      style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 40),

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
                  height: 22,
                ),
                Center(
                    child: PrimaryButtonBlack(
                      buttonText: 'BACK',
                      opacity: 1,
                      buttonWidthRatio: 0.4,
                    )),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
