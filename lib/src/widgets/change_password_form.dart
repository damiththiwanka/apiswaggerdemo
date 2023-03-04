import 'package:flutter/material.dart';
import 'build_input_field.dart';
import 'input_filed_lable.dart';


/// change password form  ---- via profile

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({Key? key}) : super(key: key);

  @override
  _ChangePasswordFormState createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Enter current password'),
          buildInputFieldWithObscureText(),
          SizedBox(height: 10.0),
          inputFieldLabel('Enter new password'),
          buildInputFieldWithObscureText(),
          SizedBox(height: 10.0),
          inputFieldLabel('Confirm new password'),
          buildInputFieldWithObscureText(),
        ],
      ),
    );
  }
}