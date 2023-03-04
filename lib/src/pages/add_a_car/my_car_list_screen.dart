import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Project MadayaS
/// created on 03/03/2023

class MyCarListScreen extends BaseView {

  @override
  _MyCarListScreenState createState() => _MyCarListScreenState();
}

class _MyCarListScreenState extends BaseViewState {


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
            middle: Text('My Cars', style: AppTextStyles().welcomeTextStyle(),),
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
                      itemCount: 1,
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
                                height: MediaQuery.of(context).size.height * 0.33,
                                width: MediaQuery.of(context).size.width - 30,
                                child: Card(
                                    shape:
                                    RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(15.0),
                                    ),
                                    color: AppColors.primaryGrayButtonGradientColorSecond,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets
                                          .only(top: 20, left: 20, right: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Dad’s Mahindra",
                                            style: AppTextStyles().offWhiteColorFont18TextStyle(),
                                          ),

                                          SizedBox(height: 6,),

                                          Text("KC 5033",
                                            style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                          ),

                                          SizedBox(height: 6,),

                                          Center(
                                            child: Container(
                                              width: 250,
                                              child: Image.asset(AppImages.car1),),
                                          ),

                                          Expanded(child: Container()),

                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [

                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: Image.asset(AppImages.flashIcon),),

                                              SizedBox(width: 11,),

                                              Text("150 kW",
                                                style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                              ),

                                              SizedBox(width: 20,),

                                              Container(
                                                width: 20,
                                                height: 20,
                                                child: Image.asset(AppImages.roundICon),),

                                              SizedBox(width: 11,),

                                              Text("CCS 2",
                                                style: AppTextStyles().offWhiteColorFont14TextStyle(),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 11,),
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryOrangeButtonGradientColorSecond.withOpacity(0.8),
        onPressed:  (){Navigator.pushNamed(context, NavigationRoutes.SELECT_A_CAR_SCREEN);},
        tooltip: 'Add',
        child: const Icon(Icons.add, color: AppColors.grey,),
      ),
    );
  }
}
