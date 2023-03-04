
/// this is the basic form of the field for the otp
// import 'package:flutter/material.dart';
// import 'package:base3/src/values/colors.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
//
// class OTPField extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: OTPTextField(
//         length: 5,
//         otpFieldStyle: OtpFieldStyle(
//           borderColor: AppColors.borderColor,
//           enabledBorderColor: AppColors.borderColor,
//           // disabledBorderColor: Colors.white,
//         ),
//         width: MediaQuery.of(context).size.width,
//         textFieldAlignment: MainAxisAlignment.spaceAround,
//         fieldWidth: 58,
//         fieldStyle: FieldStyle.box,
//         outlineBorderRadius: 10,
//         style: TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//         ),
//         onChanged: (pin) {
//           print("Changed: " + pin);
//         },
//         onCompleted: (pin) {
//           print("Completed: " + pin);
//         },
//       ),
//     );
//   }
// }


/// this is the otp field with the call back
///

import 'package:base3/src/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPField extends StatelessWidget {
  const OTPField({required this.onOTPEntered});

  final OTPCallBack onOTPEntered;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OTPTextField(

        length: 4,
        otpFieldStyle: OtpFieldStyle(
          borderColor: AppColors.borderColor,
          enabledBorderColor: AppColors.borderColor,
          // disabledBorderColor: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 45,
        fieldStyle: FieldStyle.box,
        outlineBorderRadius: 10,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        onChanged: (pin) {
          print("Changed: " + pin);
        },
        onCompleted: (pin) {
          onOTPEntered(pin);
          print("Completed: " + pin);
        },
      ),
    );
  }
}
typedef OTPCallBack = void Function(String otp);