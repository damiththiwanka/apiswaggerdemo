part of 'registration_bloc.dart';

@immutable
abstract class RegistrationState {}

class RegistrationInitialState extends RegistrationState {}

class AgreementReceiveFailed extends RegistrationState {
  AgreementReceiveFailed({required this.error});

  final Object error;

  List<Object> get props => [];
}

class EmailVerificationSendFailed extends RegistrationState {
  EmailVerificationSendFailed({required this.error});

  final Object error;

  List<Object> get props => [];
}

class OTPReceiveFailed extends RegistrationState {
  OTPReceiveFailed({required this.error});

  final Object error;

  List<Object> get props => [];
}

class CreateUserFailed extends RegistrationState {
  CreateUserFailed({required this.error});

  final Object error;

  List<Object> get props => [];
}

class PasswordChanged extends RegistrationState {
  PasswordChanged({required this.password});

  final String password;

  List<Object> get props => [];
}

class GetUserSuccessFromRegistration extends RegistrationState {
  GetUserSuccessFromRegistration({required this.user}) ;
  final User user;

  List<Object> get props => [];
}
class GetUserFailFromRegistration extends RegistrationState {
  GetUserFailFromRegistration({required this.error});

  final Object error;

  List<Object> get props => [];
}

class GetCustomerInquiryFromRegistrationFailed extends RegistrationState {
  GetCustomerInquiryFromRegistrationFailed({required this.error}) ;
  final Object error;

  List<Object> get props => [];

}

class GetCustomerInquiryFromMobileFailed extends RegistrationState {
  GetCustomerInquiryFromMobileFailed({required this.error}) ;
  final Object error;

  List<Object> get props => [];

}

class GetPasswordPoliciesFailed extends RegistrationState {
  GetPasswordPoliciesFailed({required this.error}) ;
  final Object error;

  List<Object> get props => [];

}