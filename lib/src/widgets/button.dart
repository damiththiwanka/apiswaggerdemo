import 'package:flutter/material.dart';
import 'package:base3/src/widgets/text.dart';
import 'package:base3/src/values/colors.dart' as colors;

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final bool disabled;
  final bool transparent;
  final IconData icon;
  final bool facebook;
  final double _elevation = 3;

  const CustomButton({
    Key ?key,
    this.label = "",
    required this.onPress,
    this.disabled = false,
    this.transparent = true,
    required this.icon,
    this.facebook = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var action;

    Color backgroundColor = colors.AppColors.accentColor;
    Color borderColor = colors.AppColors.accentColor;
    Color textColor = Colors.white;

    if (transparent == true) {
      backgroundColor = colors.AppColors.backgroundColor;
      borderColor = colors.AppColors.accentLightColor;
      textColor = colors.AppColors.accentLightColor;
    } else {
      backgroundColor = colors.AppColors.accentLightColor;
      borderColor = colors.AppColors.accentLightColor;
      textColor = colors.AppColors.accentColor;
    }

    if (facebook == true) {
      backgroundColor = colors.AppColors.facebookColor;
      borderColor = colors.AppColors.facebookColor;
      textColor = Colors.white;
    }
    
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ElevatedButton(
        // padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 36.0),
        // shape: RoundedRectangleBorder(
        //   side: BorderSide( color: borderColor ),
        //   borderRadius: BorderRadius.circular(10)
        // ),
        onPressed: action,
        // elevation: _elevation,
        // color: backgroundColor,
        child: CustomText(text: label ?? "Label", small: true, color: textColor )
      ),
    );
  }
}