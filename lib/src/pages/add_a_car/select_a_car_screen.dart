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
import 'package:base3/src/widgets/data_input_forms/input_field_with_dropdown.dart';
import 'package:base3/src/widgets/input_filed_lable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SelectACarScreen extends BaseView {

  @override
  _SelectACarScreenState createState() => _SelectACarScreenState();
}

class _SelectACarScreenState extends BaseViewState {
  final myCarNameController = TextEditingController();
  final _myCarNameFocusNode = FocusNode();
  final licensePlateNumberController = TextEditingController();
  final _licensePlateNumberFocusNode = FocusNode();


  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(AppImages.appBarBackButton, width: 80,),
            middle: Text('Add A Car', style: AppTextStyles().welcomeTextStyle(),),
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
          child: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                top: 15,
                child: Center(
                  child: Text("Select Your Car Type",
                  style: AppTextStyles().offWhiteColorFont16TextStyle(),
                  ),
                ),
              ),

              Positioned(
                top: 60,
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width - 30,
                    padding: EdgeInsets.only(
                        left: 10, right: 10, bottom: 30),
                    child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 11,
                        itemBuilder: (BuildContext context,
                            int index) {
                          return GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(
                              //     context,
                              //     NavigationRoutes
                              //         .DEVICE_DETAIL_SCREEN,
                              //     arguments:
                              //     snapshot.data![index]);
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Card(
                                    shape:
                                    RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(11.0),
                                    ),
                                    color: AppColors.primaryGrayButtonGradientColorSecond,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets
                                          .only(top: 8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                              child: Text("SUV",style: AppTextStyles().descriptionTextGreyFont16(),)),
                                          Container(
                                            width: 230,
                                            child: Image.asset(AppImages.car1),),
                                        ],
                                      ),
                                    )
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Container()),

                    GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: PrimaryButtonBlack(buttonText: 'CANCEL', opacity: 1, buttonWidthRatio: 0.5,)),

                    SizedBox(width: 25,),

                    GestureDetector(
                        onTap: (){Navigator.pushNamed(context, NavigationRoutes.CAR_DETAILS_SCREEN);},
                        child: PrimaryButtonOrange(buttonText: 'NEXT', opacity: 1, buttonWidthRatio: 0.5,)),

                    Expanded(child: Container()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
