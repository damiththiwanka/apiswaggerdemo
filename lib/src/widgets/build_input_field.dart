import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart';

Widget buildInputField() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: TextFormField(
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}

Widget buildInputFieldWithObscureText() {
  bool _passwordVisible = true;

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: TextFormField(
      obscureText: _passwordVisible,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: AppColors.textLabelColor,
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
