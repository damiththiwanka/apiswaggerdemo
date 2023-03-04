import 'package:base3/src/blocs/registration/registration_bloc.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;

/// Project MadayaS
/// Created by Madushanka Madakmbura on 21/01/2023

enum TextFieldPage { loginUserName, loginPassword, loginEmail, name, mobile }

class CommonTextFormField extends StatefulWidget {
  final String inputTitle;
  final String hintText;
  final TextEditingController controller;
  final ValidationType validationType;
  final Widget suffix;
  final Widget? prefix;
  final bool obscureText;
  final Function(String a) onSubmitComplete;
  final KeyBoardType inputType;
  final int minLines;
  final int maxLines;
  final bool editable;
  String? initialText = "";
  final String repeatPasswordText;
  final String repeatMobile;
  int maxLength;
  int minLength;
  bool readOnly;

  final TextFieldPage? type;
  final FocusNode? myUserNameFocusNode;
  bool onEditing;

  CommonTextFormField({
    required this.inputTitle,
    required this.controller,
    required this.suffix,
    this.obscureText = false,
    this.editable = true,
    required this.onSubmitComplete,
    this.inputType = KeyBoardType.TEXT,
    required this.hintText,
    this.minLines = 1,
    this.maxLines = 1,
    this.validationType = ValidationType.NORMAL,
    this.prefix,
    this.type,
    this.maxLength = 50,
    this.minLength = 2,
    this.myUserNameFocusNode,
    this.initialText,
    this.repeatPasswordText = '',
    this.onEditing = false,
    this.readOnly = false,
    this.repeatMobile = '',
  });

  @override
  _CommonTextFormFieldState createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      color: AppColors.fieldGreyColor,
      // color: AppColors.grey.withOpacity(0.1),
      child: Center(
        child: TextFormField(
          readOnly: widget.readOnly,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white),
          autocorrect: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          focusNode: widget.myUserNameFocusNode,
          keyboardType: getKeyBoardType(widget.inputType),
          obscureText: widget.obscureText,
          enabled: widget.editable,
          maxLength: widget.maxLength > 0 ? widget.maxLength : 50,
          cursorColor: Colors.white.withOpacity(0.3),
          onChanged: (value) {
            if (widget.validationType == ValidationType.PASSWORD) {
              if (value.isNotEmpty) {
                BlocProvider.of<RegistrationBloc>(context)
                    .add(PasswordChangedNewUser(password: value));
              } else {}
            } else if (widget.validationType ==
                ValidationType.REPEAT_PASSWORD) {
              if (value.isNotEmpty) {
                BlocProvider.of<RegistrationBloc>(context)
                    .add(PasswordChangedNewUser(password: value));
              } else {}
            }
          },
          validator: (text) {
            if (widget.validationType == ValidationType.EMAIL) {
              if (text == null || text.isEmpty) {
                return "email_cannot_be_empty";
              } else if (validateEmail(text)) {
                return null;
              } else {
                return "incorrect_email_address";
              }
            } else if (widget.validationType == ValidationType.NORMAL) {
              if (text == null || text.isEmpty) {
                return "field_cannot_be_empty";
              } else if (validateNormal(text)) {
                return null;
              } else {
                return "incorrect_input";
              }
            } else if (widget.validationType == ValidationType.ONLY_LETTERS) {
              if (text == null || text.isEmpty) {
                return "field_cannot_be_empty";
              } else if (validateOnlyLetters(text)) {
                return null;
              } else {
                return "incorrect_input";
              }
            } else if (widget.validationType == ValidationType.ONLY_NUMBERS) {
              if (text == null || text.isEmpty) {
                return "field_cannot_be_empty";
              } else if (validateOnlyNumbers(text)) {
                return null;
              } else {
                return "incorrect_input";
              }
            } else if (widget.validationType == ValidationType.PASSWORD) {
              if (text == null || text.isEmpty) {
                return "password_cannot_be_empty";
              } else if (validatePW(text)) {
                return null;
              } else {
                return "incorrect_password_format";
              }
            } else if (widget.validationType == ValidationType.MOBILE) {
              if (text == null || text.isEmpty) {
                return "mobile_number_cannot_be_empty";
              } else if (validateMobile(text)) {
                return null;
              } else {
                return "incorrect_mobile_number";
              }
            } else if (widget.validationType == ValidationType.TELEPHONE) {
              if (text == null || text.isEmpty) {
                return "telephone_number_cannot_be_empty";
              } else if (validateTelephone(text)) {
                return null;
              } else {
                return "incorrect_telephone_number";
              }
            } else if (widget.validationType == ValidationType.NIC) {
              if (text == null || text.isEmpty) {
                return "nic_cannot_be_empty";
              } else if (validateNIC(text)) {
                return null;
              } else {
                return "incorrect_nic";
              }
            } else if (widget.validationType ==
                ValidationType.REPEAT_PASSWORD) {
              if (text == null || text.isEmpty) {
                return "password_cannot_be_empty";
              } else if (text != widget.repeatPasswordText) {
                return "password_does_not_match";
              } else if (validateRepeatPassword(text)) {
                return null;
              } else {
                return "incorrect_password";
              }
            } else if (widget.validationType == ValidationType.REPEAT_MOBILE) {
              if (text == null || text.isEmpty) {
                return "mobile_number_cannot_be_empty";
              } else if (text != widget.repeatMobile) {
                return "mobile_does_not_match";
              } else if (validateRepeatMobile(text)) {
                return null;
              } else {
                return "incorrect_mobile_number";
              }
            } else if (widget.validationType == ValidationType.CURRENT_MOBILE) {
              if (text == null || text.isEmpty) {
                return "mobile_number_cannot_be_empty";
              } else if (text == widget.repeatMobile) {
                return "current_number_same_as_new_number";
              } else if (validateMobile(text)) {
                return null;
              } else {
                return "incorrect_mobile_number";
              }
            } else if (widget.validationType == ValidationType.AMOUNT) {
              if (text == null || text.isEmpty) {
                return "amount_cannot_be_empty";
              } else if (validateAmount(text)) {
                return null;
              } else {
                return "incorrect_amount";
              }
            } else if (widget.validationType == ValidationType.OTHER_NAME) {
              if (validateOtherName(text!)) {
                return null;
              } else {
                return "incorrect_other_name";
              }
            }
            if (text == null || text.isEmpty || (text.length < 2)) {
              return "text_is_empty";
            }
            return null;
          },
          textAlignVertical: TextAlignVertical.center,
          controller: widget.controller,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          decoration: widget.type != null &&
                  widget.type == TextFieldPage.loginUserName
              ? InputDecoration(
                  contentPadding: EdgeInsets.only(top: 30),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  counterText: "",
                  isDense: true,
                  labelStyle: styles.labelStyle,
                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.red),
                  hintText: "Name")
              : widget.type != null &&
                      widget.type == TextFieldPage.loginPassword
                  ? InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      // border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.borderColor, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 10.0)),
                      suffix: GestureDetector(
                        onTap: () {},
                        child: widget.suffix,
                      ),
                      isDense: true,
                      hintStyle: TextStyle(
                          fontSize: 16.0, color: AppColors.grey.withOpacity(0.1),),

                      hintText: widget.hintText,
                      labelStyle: styles.labelStyle,
                    )
                  : InputDecoration(
                      isDense: true,
                      counterText: '',
                      focusColor: AppColors.borderColor,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.borderColor, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: AppColors.primaryColor, width: 10.0)),
                      // labelText: AppLocalizations.of(context)!.translate(widget.inputTitle),
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      suffix: GestureDetector(
                        onTap: () {},
                        child: widget.suffix,
                      ),
                      prefixIcon: Padding(
                        padding: widget.prefix != null
                            ? EdgeInsets.only(
                                left: 20.0,
                                right: 30,
                              )
                            : EdgeInsets.only(left: 0.0, right: 0),
                        child: widget.prefix,
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 10,
                        minHeight: 0,
                        maxWidth: 65,
                      ),
                      hintText: widget.hintText,
                      hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: widget.readOnly
                              ? AppColors.grey
                              : AppColors.grey,
                          fontWeight: FontWeight.w500),
                    ),
          onEditingComplete: widget.onSubmitComplete("true"),
          // inputFormatters: widget.validationType == ValidationType.AMOUNT
          //     ? <TextInputFormatter> [CurrencyTextInputFormatter(
          //   decimalDigits: 2,
          //   symbol: " ",

          //  )]:null,
        ),
      ),
    );
  }

  bool validateOnlyLetters(String value) {
    RegExp regex = new RegExp(r'^([a-zA-Z])');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateOnlyNumbers(String value) {
    RegExp regex = new RegExp(r'^([0-9])');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateEmail(String value) {
    RegExp regex = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateNormal(String text) {
    RegExp regex = new RegExp(r"^[0-9a-zA-Z].*");
    if (text.trim().isNotEmpty) {
      if (text.length < widget.minLength || text.length > widget.maxLength) {
        return false;
      }
    }
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validatePW(String text) {
    RegExp regex = new RegExp(r'^.*[A-Za-z0-9_@./#&+;-]*$');
    if (text.trim().isNotEmpty) {
      if (text.length < 6 || text.length > 15) {
        return false;
      }
    }
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateRepeatPassword(String text) {
    RegExp regex = new RegExp(r'^[a-zA-Z0-9].*');
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateRepeatMobile(String text) {
    RegExp regex = new RegExp(r'^(?:[+0]7)?[0-9]{8}$');
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateMobile(String text) {
    RegExp regex = new RegExp(r'^(?:[+0])?[7][0-9]{8}$');
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateTelephone(String text) {
    RegExp regex = new RegExp(r'^(?:[+0])?[0-9][0-9]{8}$');
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateNIC(String text) {
    RegExp regex = new RegExp(r'^([0-9]{9}[x|X|v|V]|[0-9]{12})$');
    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateAmount(String text) {
    // RegExp regex = new RegExp(r'^[0-9.]+$');
    // RegExp regex = new RegExp(r'^[0-9.]+$');
    RegExp regex = new RegExp(r'^[0-9]{1,3}(,[0-9]{3})*\.[0-9]+$');

    return (!regex.hasMatch(text)) ? false : true;
  }

  bool validateOtherName(String text) {
    RegExp regex = new RegExp(r'^[a-zA-Z0-9]+$');
    bool value;
    if (text.trim().isNotEmpty) {
      if (!regex.hasMatch(text)) {
        value = false;
      } else {
        value = true;
      }
    } else {
      value = true;
    }
    return value;
  }

  getKeyBoardType(KeyBoardType keyboardType) {
    TextInputType textInputType = TextInputType.text;
    switch (keyboardType) {
      case KeyBoardType.NUM_ONLY:
        textInputType =
            TextInputType.numberWithOptions(signed: false, decimal: true);
        break;
      case KeyBoardType.NUM:
        textInputType = TextInputType.number;
        break;
      case KeyBoardType.TEXT:
        textInputType = TextInputType.text;
        break;
      case KeyBoardType.EMAIL:
        textInputType = TextInputType.emailAddress;
        break;
    }
    return textInputType;
  }
}
