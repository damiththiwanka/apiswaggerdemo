import 'package:flutter/material.dart';


import 'build_input_field.dart';
import 'input_filed_lable.dart';


///password reset form in forgot password
class PasswordResetForm extends StatefulWidget {
  const PasswordResetForm({Key? key}) : super(key: key);

  @override
  _PasswordResetFormState createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends State<PasswordResetForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Enter NIC Number'),
          buildInputField(),
          SizedBox(height: 20.0),
          inputFieldLabel('Enter Mobile Number'),
          buildInputField(),
        ],
      ),
    );
  }
}

///new password setup form
class NewPasswordSetupForm extends StatefulWidget {
  const NewPasswordSetupForm({Key? key}) : super(key: key);

  @override
  _NewPasswordSetupFormState createState() => _NewPasswordSetupFormState();
}

class _NewPasswordSetupFormState extends State<NewPasswordSetupForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Password'),
          buildInputField(),
          SizedBox(height: 20.0),
          inputFieldLabel('Confirm password'),
          buildInputField(),
        ],
      ),
    );
  }
}

///initial registration form

class InitialRegistrationForm extends StatefulWidget {
  const InitialRegistrationForm({Key? key}) : super(key: key);

  @override
  _InitialRegistrationFormState createState() => _InitialRegistrationFormState();
}

class _InitialRegistrationFormState extends State<InitialRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Nickname'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Password'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Confirm password'),
          buildInputField(),
        ],
      ),
    );
  }
}

