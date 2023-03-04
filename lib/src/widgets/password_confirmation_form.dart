import 'package:flutter/material.dart';

import 'build_input_field.dart';
import 'input_filed_lable.dart';

class PasswordConfirmationForm extends StatefulWidget {
  const PasswordConfirmationForm({Key? key}) : super(key: key);

  @override
  _PasswordResetFormState createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends State<PasswordConfirmationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('New Password'),
          buildInputField(),
          SizedBox(height: 20.0),
          inputFieldLabel('Confirm New Password'),
          buildInputField(),
        ],
      ),
    );
  }
}