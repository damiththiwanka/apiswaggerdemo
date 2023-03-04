part of 'authentication_bloc.dart';

class AuthenticationState {

  // const AuthenticationState._({
  //   this.status = AuthenticationStatus.unknown,
  //   this.user = User.empty,
  // });
  //
  // const AuthenticationState.unknown() : this._();
  //
  // const AuthenticationState.authenticated(User user)
  //     : this._(status: AuthenticationStatus.authenticated, user: user);
  //
  // const AuthenticationState.unauthenticated()
  //     : this._(status: AuthenticationStatus.unauthenticated);
  //
  // final AuthenticationStatus status;
  // final User user;
  // @override
  // List<Object> get props => [status, user];
}

// class VersionReceived extends AuthenticationState {
//   VersionReceived({required this.currentVersion});
//
//   //final Version currentVersion;
// }

class VersionReceiveFailed extends AuthenticationState {
  VersionReceiveFailed({required this.error});

  final Object error;
}

class ForceToUpdate extends AuthenticationState{

}

// class VersionApproved extends AuthenticationState{
//   VersionApproved({required this.currentVersion});
//
//   final Version currentVersion;
// }
