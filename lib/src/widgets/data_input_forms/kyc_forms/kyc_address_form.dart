import 'package:flutter/material.dart';

import '../../build_input_field.dart';
import '../../input_filed_lable.dart';


/// kyc registration forms - address

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFieldLabel('Address Line 1'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('Address Line 2'),
          buildInputField(),
          SizedBox(height: 10.0),
          inputFieldLabel('City'),
          buildInputField(),
        ],
      ),
    );
  }
}