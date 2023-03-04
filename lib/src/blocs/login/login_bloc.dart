import 'package:base3/src/repositories/sources/network/auth.service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:base3/src/models/models.dart';
import 'package:base3/src/repositories/authentication_repository.dart';
// import 'package:swagger/api.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository authRepo;
  LoginBloc({required this.authRepo}) : super(const LoginState()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<UserNameUnfocused>(_onUserNameUnfocused);
    on<PasswordUnfocused>(_onPasswordUnfocused);
    // on<FormSubmitted>(_onFormSubmitted);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is FormSubmitted) {
      yield* _onFormSubmitted(event);
    }
  }

  @override
  void onTransition(Transition<LoginEvent, LoginState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<LoginState> emit) {
    final userName = Username.dirty(event.username);
    emit(state.copyWith(
      userName: userName.valid ? userName : Username.pure(event.username),
      status: Formz.validate([userName, state.password]),
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password.valid ? password : Password.pure(event.password),
      status: Formz.validate([state.userName, password]),
    ));
  }

  void _onUserNameUnfocused(UserNameUnfocused event, Emitter<LoginState> emit) {
    final userName = Username.dirty(state.userName.value);
    emit(state.copyWith(
      userName: userName,
      status: Formz.validate([userName, state.password]),
    ));
  }

  void _onPasswordUnfocused(
    PasswordUnfocused event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.userName, password]),
    ));
  }

  // void _onFormSubmitted(FormSubmitted event, Emitter<LoginState> emit) async {
  //   final userName = Username.dirty(state.userName.value);
  //   final password = Password.dirty(state.password.value);
  //   emit(state.copyWith(
  //     userName: userName,
  //     password: password,
  //     status: Formz.validate([userName, password]),
  //   ));
  //   if (state.status.isInvalid) {
  //     emit(state.copyWith(status: FormzStatus.submissionInProgress));
  //     try{
  //       await authRepo.logIn(username: userName.value, password: password.value);
  //       emit(state.copyWith(status: FormzStatus.submissionSuccess));
  //     }catch(e){
  //       emit(state.copyWith(status: FormzStatus.submissionFailure));
  //     }
  //   }
  // }

  ///
  Stream<LoginState> _onFormSubmitted(FormSubmitted event) async* {
    // UserLoginRequest loginRequest = UserLoginRequest(
    //   event.username,
    //   event.password,
    // );
    // loginRequest.username = event.username;
    // loginRequest.password = event.password;

    try {
      // String loginResponse =
      //     await authRepo.logIn(loginRequestParent: loginRequest);

      yield LoginState(status: FormzStatus.valid);
    } catch (e) {
      yield LoginFailed(error: e);
    }
  }
}

// class UserLoginRequest {
//   late String username;
//    late String password;
//
//   UserLoginRequest(this.password,this.username);
// }
