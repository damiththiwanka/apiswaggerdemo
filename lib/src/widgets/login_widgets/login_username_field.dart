import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/helpers/translation/all_translations.dart';
import 'package:base3/src/models/models.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;


Widget usernameComponent(BuildContext context, TextEditingController myUsrNameController, FocusNode myUserNameFocusNode) {
  return BlocBuilder<LoginBloc, LoginState>(
    builder: (context, state) {
      return TextFormField(
        controller: myUsrNameController,
        textInputAction: TextInputAction.next,
        maxLength: 10,
        focusNode: myUserNameFocusNode,
        decoration: InputDecoration(
            errorText: state.userName.error == UserNameValidationError.invalid
                ? 'Please ensure the NIC entered is valid'
                : state.userName.error == UserNameValidationError.less7
                ? 'First character should be 7'
                : null,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            counterText: "",
            isDense: true,
            labelStyle: styles.labelStyle,
            labelText:
            AppLocalizations.of(context)!.translate("your_nic_here")),
        style: styles.labelStyle,
        onChanged: (value) =>
            context.read<LoginBloc>().add(UsernameChanged(username: value)),
        keyboardType:
        TextInputType.numberWithOptions(signed: false, decimal: true),
      );
    },
  );
}