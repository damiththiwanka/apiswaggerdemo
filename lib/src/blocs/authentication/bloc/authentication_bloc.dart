import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:base3/src/models/user.dart';
import 'package:base3/src/repositories/user_repository.dart';
// import 'package:swagger/api.dart' as swagger;

import '../../../repositories/authentication_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super( AuthenticationState()) {
    // on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
    on<AppVersionGet>(_onAppVersionGet);
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  // void _onAuthenticationStatusChanged(
  //   AuthenticationStatusChanged event,
  //   Emitter<AuthenticationState> emit,
  // ) async {
  //   switch (event.status) {
  //     case AuthenticationStatus.unauthenticated:
  //       return emit(const AuthenticationState.unauthenticated());
  //     case AuthenticationStatus.authenticated:
  //       final user = await _tryGetUser();
  //       return emit(user != null
  //           ? AuthenticationState.authenticated(user)
  //           : const AuthenticationState.unauthenticated());
  //     default:
  //       return emit(const AuthenticationState.unknown());
  //   }
  // }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.logOut();
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }

  void _onAppVersionGet(AppVersionGet event,
      Emitter<AuthenticationState> emit) async {
    //swagger.AppDetailsResponse res;
    int version = 0;
    int currentVersion = 1; // = new Version(1, 0, 3);
    int minVersion = 1; // = new Version(1, 0, 3);
    int latestVersion =2;

    if (latestVersion > currentVersion) {
      print("Update is available");
    }

    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // try {
    //   res = await _authenticationRepository.getVersion();
    //   latestVersion = Version.parse(res.data['latestVersion']);
    //   minVersion = Version.parse(res.data['minVersion']);
    //
    //   emit (VersionReceived(currentVersion: latestVersion));
    //   try {
    //     version =
    //     Platform.isIOS ? packageInfo.buildNumber : packageInfo.version;
    //     currentVersion = Version.parse(version);
    //   } catch (e) {
    //     emit(VersionReceiveFailed(error: e));
    //   }

      if (minVersion > currentVersion) {
        emit (ForceToUpdate());
      }
      //print(res);
  }
}
