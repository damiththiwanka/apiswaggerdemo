import 'package:flutter/material.dart';
import 'package:base3/src/widgets/build_input_field_wtih_forward_icon.dart';
import '../../build_input_filed_with_dropdown.dart';
import '../../input_filed_lable.dart';


/// kyc registration forms - personal info

class EmploymentInfoForm extends StatefulWidget {
  const EmploymentInfoForm({Key? key}) : super(key: key);

  @override
  _EmploymentInfoFormState createState() => _EmploymentInfoFormState();
}

class _EmploymentInfoFormState extends State<EmploymentInfoForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Employment Group'),
          InputFieldWithForwardIcon(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Occupation'),
          InputFieldWithForwardIcon(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Main Sector'),
          InputFieldWithForwardIcon(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Employer Name'),
          InputFieldWithForwardIcon(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Office Contact Number'),
          InputFieldWithDropdown(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
          SizedBox(height: 10.0),
          inputFieldLabel('Average Monthly Income'),
          InputFieldWithForwardIcon(context: context, value: 'value', onChoose: onChoose, items: ['Mr', 'Mrs', 'Miss']),
        ],
      ),
    );
  }

  onChoose() {
    setState(() {
      print('employment poge input fileds');
    });
  }
}