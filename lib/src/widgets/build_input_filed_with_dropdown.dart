import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart' as colors;
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/dimens.dart' as dimens;

import 'modal.dart';
import 'text.dart';

class InputFieldWithDropdown extends StatelessWidget {
  final BuildContext context;
  final String value;
  final Function onChoose;
  final List<String> items;

  const InputFieldWithDropdown({Key ?key, required this.context, required this.value, required this.onChoose, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    List<Widget> options = [];

    if (value != null) _controller.text = value;

    if (items != null)
      items.map((i) {
        options.add(
            ListTile(
              onTap: () {
                _controller.text = i;
                if (onChoose != null) onChoose(i);
                Navigator.pop(context);
              },
              //status: _controller.text == i ? true : false,
              title: CustomText(text: i),
            )
        );
      }).toList();

    return TextField(
        controller: _controller,
        onChanged: (value) => null,
        enableInteractiveSelection: false,
        focusNode: _AlwaysDisabledFocusNode(),
        cursorColor: Colors.white.withOpacity(0.8),
        onTap: () {
          Modal.show(
              context,
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10),
                    ...options
                  ]
              )
          );
        },
        textCapitalization: TextCapitalization.none,
        style: TextStyle(color: colors.AppColors.grey), //cor do texto ao digitar,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down, color: colors.AppColors.grey, size: 30,),
            // errorText: snapshot.error,
            // hintText: placeholder,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: AppColors.grey.withOpacity(0.1),
            filled: true,
            enabled: true,
            labelStyle: TextStyle(
                fontSize: dimens.fontEditText,
                color: colors.AppColors.primaryColorDark //cor da label
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: colors.AppColors.borderColor, //cor da label quando esta com focus
                    width: 0
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.borderColor, //cor da label quando esta com focus
                    width: 1
                )
            )
        )
    );
  }
}

class _AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}