part of 'login_bloc.dart';

abstract class LoginEvent{
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginFailed extends LoginState {
  LoginFailed({required this.error});

  final Object error;

  List<Object> get props => [error];
}
class LoginButtonClicked extends LoginEvent {
  // LoginButtonClicked(this.loginRequest);
  LoginButtonClicked();

  //final LoginRequest loginRequest;
}

class UsernameChanged extends LoginEvent {
  const UsernameChanged({required this.username});

  final String username;
}

class UserNameUnfocused extends LoginEvent {}

class PasswordChanged extends LoginEvent {
  PasswordChanged({required this.password});

  final String password;
}

class PasswordUnfocused extends LoginEvent {}

class FormSubmitted extends LoginEvent {
  String username;
 String password;

  FormSubmitted(this.username, this.password);
}


