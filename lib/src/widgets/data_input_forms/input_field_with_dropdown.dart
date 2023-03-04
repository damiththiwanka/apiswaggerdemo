
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/dimens.dart';
import 'package:base3/src/values/strings.dart';
import 'package:flutter/material.dart';

class InputFieldWithDropdownNavigation extends StatefulWidget {
  final SearchType searchType;
  final BuildContext context;
  final String value;
  final TextEditingController controller;
  final Function onChoose;
 // final InfoScreenArguments arguments;
  final String navigationPath;
  final Icon icon;

  InputFieldWithDropdownNavigation(
      {required this.context,
        required this.value,
        required this.onChoose,
        required this.navigationPath,
        required this.controller,
        //required this.arguments,
        required this.icon,
        required this.searchType});

  @override
  State<InputFieldWithDropdownNavigation> createState() =>
      _InputFieldWithDropdownNavigationState(this.icon);
}

class _InputFieldWithDropdownNavigationState
    extends State<InputFieldWithDropdownNavigation> {
  final Icon icon;

  // late InfoScreenArguments InfoScreenArguments;

  _InputFieldWithDropdownNavigationState(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: TextFormField(
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) => null,
          enableInteractiveSelection: false,
          validator: (text) {
            if (text == null || text.isEmpty || text == "") {
              return "field_cannot_be_empty";
            } else {
              return null;
            }
          },
          focusNode: _AlwaysDisabledFocusNode(),
          cursorColor: Colors.white,
          onTap: () async {
            // widget.arguments.searchFrom = widget.searchType;
            // var result = await Navigator.pushNamed(context, widget.navigationPath,
            //     arguments: widget.arguments);
            // // widget.controller.text = result.toString();
            // if (result != null) {
            //   InfoScreenArguments = result as InfoScreenArguments;
            //   widget.onChoose(InfoScreenArguments);
            //   setState(() {
            //     if (widget.searchType == SearchType.TITLES) {
            //       widget.controller.text =
            //           InfoScreenArguments.title!.description;
            //     } else if (widget.searchType == SearchType.MARITAL_STATUS) {
            //       widget.controller.text =
            //           InfoScreenArguments.maritalState!.description;
            //     } else if (widget.searchType == SearchType.CITY) {
            //       widget.controller.text =
            //           InfoScreenArguments.city!.description;
            //     }  else if (widget.searchType == SearchType.EMP_GROUP) {
            //       widget.controller.text =
            //           InfoScreenArguments.empGroup!.description;
            //     }else if (widget.searchType == SearchType.OCCUPATION) {
            //       widget.controller.text =
            //           InfoScreenArguments.occupation!.description;
            //     }else if (widget.searchType == SearchType.MAIN_SECTOR) {
            //       widget.controller.text =
            //           InfoScreenArguments.mainSector!.description;
            //     }else if (widget.searchType == SearchType.EMP_NAME) {
            //       widget.controller.text =
            //           InfoScreenArguments.empName!.description;
            //     }else if (widget.searchType == SearchType.AVG_MONTHLY_INCOME) {
            //       widget.controller.text =
            //           InfoScreenArguments.averageMonthlyIncome!.description;
            //     } else if (widget.searchType == SearchType.SOURCE_OF_FUNDS) {
            //       widget.controller.text =
            //           InfoScreenArguments.sourceOfFunds!.description;
            //     }else if (widget.searchType == SearchType.EXPECTED_TURNOVER) {
            //       widget.controller.text =
            //           InfoScreenArguments.expectedTurnover!.description;
            //     }else if (widget.searchType == SearchType.PREFERRED_BRANCH) {
            //       widget.controller.text =
            //           InfoScreenArguments.preferredBranch!.description;
            //     }else if (widget.searchType == SearchType.ACCOUNT_OPENING_REASON) {
            //       widget.controller.text =
            //           InfoScreenArguments.accountOpeningPurpose!.description;
            //     }else {
            //       widget.controller.text = InfoScreenArguments.officeContactNumber!;
            //     }
            //   });
            // }
          },
          textCapitalization: TextCapitalization.none,
          style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              suffixIcon: Container(
                  height: 10,
                  child: icon
              ),
              //errorText: snapshot.error,
              //hintText: placeholder,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabled: true,
              labelStyle: TextStyle(
                  fontSize: fontEditText, color: AppColors.primaryColorDark),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.borderColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.borderColor)))),
    );
  }
}

class _AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
