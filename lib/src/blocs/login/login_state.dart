part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.userName = const Username.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
  });

  final Username userName;
  final Password password;
  final FormzStatus status;


  LoginState copyWith({
    Username? userName,
    Password? password,
    FormzStatus? status,
  })

  {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }


  @override
  List<Object> get props => [userName, password, status];
}
