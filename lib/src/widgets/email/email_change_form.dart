import 'package:flutter/material.dart';


import '../build_input_field.dart';
import '../input_filed_lable.dart';



///password reset form in forgot password
class ChangeEmailForm extends StatefulWidget {
  const ChangeEmailForm({Key? key}) : super(key: key);

  @override
  _ChangeEmailFormState createState() => _ChangeEmailFormState();
}

class _ChangeEmailFormState extends State<ChangeEmailForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Current Email Address'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('New Email Address'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Confirm Email Address'),
          buildInputField(),
        ],
      ),
    );
  }
}


