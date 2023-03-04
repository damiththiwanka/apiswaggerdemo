import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';

class TransparentButtonWithBorder extends StatelessWidget {
  final String buttonText;

  TransparentButtonWithBorder({
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25.0,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: AppColors.borderColor)),
      child: Text(
        buttonText,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
