import 'package:base3/src/values/app_text_styles.dart';
import 'package:flutter/cupertino.dart';


Widget inputFieldLabel(String textLabel) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Text(textLabel, style: AppTextStyles().primaryColorWhite16TextStyle()),
  );
}
