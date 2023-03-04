import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart' as colors;
import './text.dart';

class CustomSnackbar {
  CustomSnackbar (GlobalKey<ScaffoldState> scaffoldKey, { required String message, required Function action, required String actionMessage }) {
    final snackbar = SnackBar(
      action: action == null ? null : SnackBarAction(
        label: actionMessage ?? "OK",
        onPressed: () => action == null ? () => null : action(),
        textColor: Colors.white54,
      ),
      backgroundColor: colors.AppColors.snackbarBackgroundColor,
      content: CustomText(
        white: true,
        bold: true,
        small: true,
        text: message,
      ),
    );

   // scaffoldKey.currentState!.showSnackBar(snackbar);
  }
}