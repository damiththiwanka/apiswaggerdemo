import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_with_blakish_gradient.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;

/// Project MadayaS
/// Create by Madushanka Madakumbura on 07/02/23 23:51
///

class SelectOptionsInnerWidget extends StatefulWidget {
  @override
  _SelectOptionsInnerWidgetState createState() => _SelectOptionsInnerWidgetState();
}

class _SelectOptionsInnerWidgetState extends State<SelectOptionsInnerWidget> {
  DateTime _dateTime = DateTime.now();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15,),

          Text(
            "Select Options",
            style: AppTextStyles().offWhiteColorFont22TextStyle(),
          ),
          Expanded(child: Container()),


          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.4 - 20,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(height: 20,),

                        Text(
                          "Max Time",
                          style: AppTextStyles().primaryTextColorFont22TextStyle(),
                        ),

                        SizedBox(height: 15,),

                        Text(
                          "use the full time you have set in the time slot",
                          style: AppTextStyles().offWhiteColorFont14TextStyle(),
                          textAlign: TextAlign.center
                        ),

                      ],
                    ),
                  )
                ),
              ),

              SizedBox(width: 16,),

              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.4 - 20,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(height: 20,),

                        Text(
                          "Max Power",
                          style: AppTextStyles().primaryTextColorFont22TextStyle(),
                        ),

                        SizedBox(height: 15,),

                        Text(
                            "Use maximum power and charge fast",
                            style: AppTextStyles().offWhiteColorFont14TextStyle(),
                            textAlign: TextAlign.center
                        ),

                      ],
                    ),
                  )
                ),
              ),
            ],
          ),

          SizedBox(height: 6,),

          Expanded(child: Container()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: PrimaryButtonBlack(
                      buttonText: 'CANCEL', buttonWidthRatio: 0.5, opacity: 1)),
              SizedBox(
                width: 8,
              ),
              PrimaryButtonBlackishGradient(
                buttonWidthRatio: 0.5,
                opacity: 1,
                buttonText: 'SET',
              ),
            ],
          ),
        ],
      ),
    );
  }
}