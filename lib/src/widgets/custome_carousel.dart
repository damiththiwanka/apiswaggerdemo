import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// Project Base3
/// Created by Madushanka Madakumbura on 03/02/2023
///
///

Widget customeCarousal({
  required BuildContext context,
  required Color indicatorColor,
  required bool isLoaded,
  bool? fromWallet = true,
  bool? fromCard = false,
  bool? walletOnly = false,
}) {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final List<String> imgList = [
    AppImages.car1,
    AppImages.car1,
    AppImages.car1,
    AppImages.car1,
  ];


  return  imgList.isNotEmpty
      ? Container(
      width: MediaQuery.of(context).size.width - 50,
      child:
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppConstants.adaptiveScreen.setHeight(300),
          width: AppConstants.adaptiveScreen.setWidth(428),
          child: PageView.builder(
            controller: controller,
            itemCount: 4,
            onPageChanged: (value) {
              //getInstrumentDetail(instrumentList[value]);
            },
            itemBuilder: (_, index) {
              return Container(
                width: MediaQuery.of(context).size.width - 50,
                height: AppConstants.adaptiveScreen.setHeight(250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.primaryGrayButtonGradientColorSecond,
                ),
                margin: EdgeInsets.only(right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        color: AppColors.cardViewBackgroundColorDarkBlue,
                      ),

                      SizedBox(height: 8,),

                      Container(
                          child: Text("SUV",style: AppTextStyles().descriptionTextGreyFont16(),)),

                      SizedBox(height: 20,),

                      Container(
                        height: 150,
                        width: 300,
                        child:
                        Image.asset(imgList[index]),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 5),

        ///slider indicator
        Visibility(
          visible: imgList.length > 1,
          child: Center(
            child: SmoothPageIndicator(
              controller: controller, // PageController
              count: imgList.length,
              effect: ExpandingDotsEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 20.0,
                dotHeight: 8.0,
                expansionFactor: 2,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: indicatorColor.withOpacity(0.4),
                activeDotColor: indicatorColor,
                // dotColor: AppColors.barIndicatorSelectedColor.withOpacity(0.4),
                // activeDotColor: AppColors.expandingBarIndicatorSelectedColor,
              ),
            ),
          ),
        ),

        SizedBox(height: 5),
      ]))
      : Container(
    width: MediaQuery.of(context).size.width,
    child: Center(
      child: Container(
        child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              side: BorderSide(color: AppColors.borderColor),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top:
                        AppConstants.adaptiveScreen.setWidth(10)),
                    margin: EdgeInsets.only(
                        top:
                        AppConstants.adaptiveScreen.setWidth(10)),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset(
                      AppImages.successImage,
                      width: AppConstants.adaptiveScreen.setWidth(70),
                    )),
              ],
            )),
      ),
    ),
  );
}
