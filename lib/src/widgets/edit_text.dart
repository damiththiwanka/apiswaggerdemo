import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:base3/src/values/colors.dart' as colors;
import 'package:base3/src/values/dimens.dart' as dimens;

class EditText extends StatefulWidget {
  final bool autofocus;
  final Stream<dynamic> value;
  final Function(dynamic) onChange;
  final String placeholder;
  final TextInputType keyboardType;
  final bool password;
  final bool dark;
  final bool multiline;
  final String labelText;
  final String mask;

  const EditText({Key? key, required this.autofocus, required this.value, required this.onChange, required this.placeholder, required this.keyboardType, required this.password, required this.dark, required this.multiline, required this.labelText, required this.mask}) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  late TextEditingController _controller;

  @override
  void didChangeDependencies() {
    _controller = new TextEditingController();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<dynamic>(
        stream: widget.value,
        initialData: "",
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            _controller.text = snapshot.data;
            _controller.selection = TextSelection.collapsed(offset: snapshot.data.length);
          }

          return TextField(
              controller: _controller,
              obscureText: widget.password == true ? true : false,
              onChanged: (text) {
                if (widget.onChange != null) widget.onChange(text);
              },
              maxLines: widget.multiline == true ? null : 1,
              keyboardType: widget.multiline == true ? TextInputType.multiline : widget.keyboardType,
              style: TextStyle(
                  color: widget.dark == true ? colors.AppColors.backgroundColor : colors.AppColors.primaryColor  //cor do texto ao digitar,
              ),
              autofocus: widget.autofocus == null ? false : true,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                  hintText: snapshot.data == null ? "Holder" : snapshot.data ,
                  labelText: widget.labelText == null ? widget.placeholder: widget.labelText,
                  errorText: snapshot.data,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.dark == true ? Colors.white : colors.AppColors.primaryColorDark, //cor da borda
                        width: 0.0
                    ),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.transparent, //cor do placeholder com foco
                      fontSize: dimens.fontEditText
                  ),
                  enabled: true,
                  labelStyle: TextStyle(
                      fontSize: dimens.fontEditText,
                      color: widget.dark == true ? colors.AppColors.accentLightColor: colors.AppColors.accentLightColor //cor da label
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: colors.AppColors.accentLightColor, //cor da label quando esta com focus
                          width: 0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.dark == true ? colors.AppColors.backgroundColor : colors.AppColors.primaryColorDark, //cor da label quando esta com focus
                          width: 1
                      )
                  )
              )
          );
        }
    );
  }
}
