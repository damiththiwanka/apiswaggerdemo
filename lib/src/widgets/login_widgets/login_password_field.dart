import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/helpers/translation/all_translations.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';
/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/16/21 09:17
Widget passwordComponent(BuildContext context, TextEditingController myPsWrdController, FocusNode myPasswordFocusNode, bool passwordVisible) {
  return BlocBuilder<LoginBloc, LoginState>(
    builder: (context, state) {
      return TextFormField(
        obscureText: passwordVisible,
        controller: myPsWrdController,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          //border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility_off : Icons.visibility,
              color: AppColors.textLabelColor,
            ),
            onPressed: () {},
          ),
          isDense: true,
          labelText:
          AppLocalizations.of(context)!.translate("your_password_here"),
          labelStyle: styles.labelStyle,
        ),
        onChanged: (value) =>
            context.read<LoginBloc>().add(PasswordChanged(password: value)),
        style: styles.labelStyle,
        textInputAction: TextInputAction.done,
      );
    },
  );
}
