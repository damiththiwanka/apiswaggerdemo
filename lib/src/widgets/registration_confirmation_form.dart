import 'package:flutter/material.dart';

import 'build_input_field.dart';
import 'input_filed_lable.dart';

class RegistrationConfirmationForm extends StatelessWidget {
  const RegistrationConfirmationForm({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Nickname'),
          buildInputField(),
          SizedBox(height: 20.0),
          inputFieldLabel('Password'),
          buildInputField(),
          SizedBox(height: 20.0),
          inputFieldLabel('Confirm New Password'),
          buildInputField(),
        ],
      ),
    );
  }
}
