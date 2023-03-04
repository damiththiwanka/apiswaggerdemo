import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_with_blakish_gradient.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 06/02/23 01:32
///

class EndTimeInnerWidget extends StatefulWidget {
  @override
  _EndTimeInnerWidgetState createState() => _EndTimeInnerWidgetState();
}

class _EndTimeInnerWidgetState extends State<EndTimeInnerWidget> {
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
          Text(
            "End Time",
            style: AppTextStyles().offWhiteColorFont22TextStyle(),
          ),
          Expanded(child: Container()),

          TimePickerSpinner(
            is24HourMode: true,
            normalTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(0.8),
            ),
            highlightedTextStyle: TextStyle(
              fontSize: 32,
              color: AppColors.primaryOrangeButtonGradientColorSecond,
            ),
            alignment: Alignment.center,
            spacing: 80,
            itemHeight: 60,
            isForce2Digits: true,
            onTimeChange: (time) {
              setState(() {
                _dateTime = time;
              });
            },
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 15,
                child: Image.asset(AppImages.divider),),

              SizedBox(width: 70,),

              Container(
                width: 70,
                height: 15,
                child: Image.asset(AppImages.divider),),
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
                buttonText: 'NEXT',
              ),
            ],
          ),
        ],
      ),
    );
  }
}