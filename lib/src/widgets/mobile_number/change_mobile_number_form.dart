import 'package:flutter/material.dart';
import '../build_input_field.dart';
import '../input_filed_lable.dart';


/// change mobile number form  ---- via profile

class ChangeMobileNumberForm extends StatefulWidget {
  const ChangeMobileNumberForm({Key? key}) : super(key: key);

  @override
  _ChangeMobileNumberFormState createState() => _ChangeMobileNumberFormState();
}

class _ChangeMobileNumberFormState extends State<ChangeMobileNumberForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Current Mobile Number'),
          buildInputFieldWithObscureText(),
          SizedBox(height: 10.0),
          inputFieldLabel('New Mobile Number'),
          buildInputFieldWithObscureText(),
          SizedBox(height: 10.0),
          inputFieldLabel('Confirm Mobile Number'),
          buildInputFieldWithObscureText(),
        ],
      ),
    );
  }
}