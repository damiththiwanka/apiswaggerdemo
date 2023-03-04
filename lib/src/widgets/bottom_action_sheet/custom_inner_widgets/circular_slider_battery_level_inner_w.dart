import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_with_blakish_gradient.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 08/02/23 15:17
///

class BatteryLevelInnerWidget extends StatefulWidget {
  @override
  _BatteryLevelInnerWidgetState createState() => _BatteryLevelInnerWidgetState();
}

class _BatteryLevelInnerWidgetState extends State<BatteryLevelInnerWidget> {

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
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Battery Level",
            style: AppTextStyles().offWhiteColorFont19TextStyle(),
          ),

          SizedBox(height: 8,),

          Text(
            "Battery level when intend to  start charge",
            style: AppTextStyles().offWhiteColorFont14TextStyle(),
          ),

          Expanded(child: Container()),

          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width - 150,
            height: 250,
            child: SleekCircularSlider(
              initialValue: 20,
                appearance: CircularSliderAppearance(
                  spinnerMode: false,
                  customWidths: CustomSliderWidths(
                    trackWidth: 3,
                    progressBarWidth: 6,
                    handlerSize: 8,
                  ),
                  customColors: CustomSliderColors(
                    trackColor: AppColors.black.withOpacity(0.6),
                    progressBarColor: AppColors.primaryTextColor,
                    shadowColor: AppColors.offWhiteColor,
                    hideShadow: false,
                    shadowStep: 1,
                    shadowMaxOpacity: 0.1,
                    //AppColors.primaryGrayButtonGradientColorSecond,
                    dotColor: AppColors.sliderTrackBallColor,
                  ),
                  startAngle: 100,
                  angleRange: 220,
                  infoProperties: InfoProperties(
                    mainLabelStyle: AppTextStyles().primaryTextColorFont28TextStyle(),
                  ),
                ),
                onChange: (double value) {
                  print(value);
                }),
          ),

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