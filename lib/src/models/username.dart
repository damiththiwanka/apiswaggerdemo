import 'package:formz/formz.dart';

enum UserNameValidationError { invalid, less7 }

class Username extends FormzInput<String, UserNameValidationError> {
  const Username.pure([String value = '']) : super.pure(value);
  const Username.dirty([String value = '']) : super.dirty(value);

  static final _userNameRegex = RegExp(
    r'^(?:[0-9])?[0-9]{10}'
  );

  @override
  UserNameValidationError? validator(String? value) {
    if (value!.trim().isNotEmpty) {
      if (value[0] != "7") {
        return UserNameValidationError.less7;
      }
    }
    return _userNameRegex.hasMatch(value)
        ? null
        : UserNameValidationError.invalid;
  }
}
