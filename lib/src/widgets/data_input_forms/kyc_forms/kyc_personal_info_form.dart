import 'package:flutter/material.dart';
import 'package:base3/src/widgets/build_input_filed_with_dropdown.dart';
import 'package:base3/src/widgets/dropdown.dart';

import '../../build_input_field.dart';
import '../../input_filed_lable.dart';


/// kyc registration forms - personal info

class PersonalInfoRegistrationForm extends StatefulWidget {
  const PersonalInfoRegistrationForm({Key? key}) : super(key: key);

  @override
  _PersonalInfoRegistrationFormState createState() => _PersonalInfoRegistrationFormState();
}

class _PersonalInfoRegistrationFormState extends State<PersonalInfoRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Title'),
          InputFieldWithDropdown(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Last Name'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Other Name'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Martial State'),
          InputFieldWithDropdown(context: context, value: 'value', onChoose: onChoose, items: ['Single', 'Married']),
          SizedBox(height: 10.0),
          inputFieldLabel('Email Address'),
          buildInputField(),
        ],
      ),
    );
  }

  onChoose() {
    setState(() {
      print('dropdown method');
    });
  }
}