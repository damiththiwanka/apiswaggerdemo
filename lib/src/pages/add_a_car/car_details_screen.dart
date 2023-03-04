import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/build_input_filed_with_dropdown.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/custome_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarDetailsScreen extends BaseView {

  @override
  _CarDetailsScreenState createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends BaseViewState {

  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  bool isLoaded = false;
  final List<String> imgList = [
    AppImages.car1,
    AppImages.car1,
    AppImages.car1,
    AppImages.car1,
  ];

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
                Text("Dad’s Mahindra",
                  style: AppTextStyles().offWhiteColorFont22TextStyle(),
                ),
                SizedBox(height: 16,),

                Text("KC 5033",
                  style: AppTextStyles().offWhiteColorFont16TextStyle(),
                ),

                SizedBox(height: 25,),

                // Container(
                //   height: AppConstants.adaptiveScreen.setWidth(150),
                //   //color: Colors.grey,
                //   width: AppConstants.adaptiveScreen.setWidth(428),
                //   child: CarouselSlider(
                //     options: CarouselOptions(
                //       autoPlay: false,
                //       aspectRatio: 1,
                //       viewportFraction: 0.89,
                //       enlargeCenterPage: false,
                //     ),
                //     items: imgList
                //         .map((item) => GestureDetector(
                //       onTap: () {
                //       },
                //       child: Container(
                //         margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                //         child: Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(16),
                //             color: AppColors.cardViewBackgroundColorBlue,
                //           ),
                //           child: Stack(
                //             children: [
                //               Positioned(
                //                 top: 5,
                //                 right: 1,
                //                 left: 0,
                //                 child: Card(
                //                   elevation: 4,
                //                   shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.all(
                //                       Radius.circular(15),
                //                     ),
                //                   ),
                //                   color: AppColors.cardViewBackgroundColorBlue,
                //                 ),
                //               ),
                //
                //               // /// Custom indicator
                //               // Positioned(
                //               //   top: AppConstants.adaptiveScreen.setHeight(130),
                //               //   left: MediaQuery.of(context).size.width / 2 - 60,
                //               //   right: MediaQuery.of(context).size.width / 2 - 60,
                //               //   child: Container(
                //               //     height: AppConstants.adaptiveScreen.setHeight(50),
                //               //     child:
                //               //     CustomSliderBarIndicator(totalSteps: 3, currentStep: 1),
                //               //   ),
                //               // ),
                //
                //             ],
                //           ),
                //         ),
                //       ),
                //     ))
                //         .toList(),
                //   ),
                // ),
                customeCarousal(
                    context: context,
                    indicatorColor: Colors.redAccent,
                    isLoaded: isLoaded),

                SizedBox(
                  height: 6,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Connector ", onChoose: (){}, items: ["connector 1", "connector 2"])),

                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Power ", onChoose: (){}, items: ["power 1", "power 2"])),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Connector ", onChoose: (){}, items: ["connector 1", "connector 2"])),

                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Power ", onChoose: (){}, items: ["power 1", "power 2"])),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Connector ", onChoose: (){}, items: ["connector 1", "connector 2"])),

                    Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Power ", onChoose: (){}, items: ["power 1", "power 2"])),
                  ],
                ),

                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Container()),

                    GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: PrimaryButtonBlack(buttonText: 'CANCEL', opacity: 1, buttonWidthRatio: 0.5,)),

                    SizedBox(width: 25,),

                    GestureDetector(
                        onTap: (){Navigator.pushNamed(context, NavigationRoutes.MY_CAR_LIST_SCREEN);},
                        child: PrimaryButtonOrange(buttonText: 'SAVE', opacity: 1, buttonWidthRatio: 0.5,)),

                    Expanded(child: Container()),
                  ],
                ),

              ],
            )
          ),
        ),
      ),
    );
  }
}
