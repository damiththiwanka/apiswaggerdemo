import 'dart:ffi';

import 'package:base3/src/values/colors.dart';
import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidthRatio = 0.5;
  //final Function onTap;

  LoginButton({
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.075,
      width: MediaQuery.of(context).size.width * 0.58,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.buttonGradientColorFirst,
            AppColors.buttonGradientColorSecond,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.buttonGradientColorFirst.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 8,
            offset: Offset(5,5),
          ),
        ],
        borderRadius: BorderRadius.circular(50.0),
       // color: colors.AppColors.buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
