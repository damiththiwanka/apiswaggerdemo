import 'package:base3/src/values/app.constants.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:flutter/material.dart';
import 'common_background_lower_component.dart';
import 'common_background_upper_component.dart';

class CommonBackgroundComponent extends StatefulWidget {
  /// pass list of Children wrap with positioned or Alignment widget
  final List<Widget> children;

  ///Enable AppBar title , pass title to pageTitle argument
  final String pageTitle;

  ///To set height of bottom sheet pass double value for bottomSheetHeight
  final double bottomContainerHeight;

  ///To enable back button pass true for backButton
  final bool backButton;

  final bool rightLogo;

  CommonBackgroundComponent({
    required this.children,
    this.pageTitle = '',
    this.bottomContainerHeight = 840,
    this.backButton = false,
    this.rightLogo = false,
  });

  @override
  _CommonBackgroundComponentState createState() =>
      _CommonBackgroundComponentState();
}

class _CommonBackgroundComponentState extends State<CommonBackgroundComponent> {
  final up = UpperComponent();
  final low = LowerComponent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        up.upperBackgroundComponent(title: widget.pageTitle),
        low.lowerBackGroundComponent(height: widget.bottomContainerHeight),
        widget.backButton
            ? Positioned(
                top: AppConstants.adaptiveScreen.setHeight(50),
                left: AppConstants.adaptiveScreen.setWidth(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                          size: AppConstants.adaptiveScreen.setWidth(15),
                        ),
                      ),
                      Container(
                          child: Text(
                        "Back",
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: AppConstants.adaptiveScreen.setSp(18)),
                      )),
                    ],
                  ),
                ),
              )
            : SizedBox(),
        widget.rightLogo
            ? Positioned(
                top: AppConstants.adaptiveScreen.setHeight(33),
                right: AppConstants.adaptiveScreen.setWidth(10),
                child: Container(
                    height: AppConstants.adaptiveScreen.setHeight(60),
                    width: AppConstants.adaptiveScreen.setWidth(70),
                    child: Image.asset(AppImages.logo)))
            : SizedBox(),
        Stack(
          children: widget.children,
        )
      ],
    );
  }
}
