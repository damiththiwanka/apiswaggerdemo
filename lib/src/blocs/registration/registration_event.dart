part of 'registration_bloc.dart';

@immutable
abstract class RegistrationEvent {}

class GetAgreement extends RegistrationEvent {
  GetAgreement(this.type);

  final String type;
}

class PasswordChangedNewUser extends RegistrationEvent {
  PasswordChangedNewUser({required this.password});

  final String password;
}


class GetUserFromRegistration extends RegistrationEvent {}

class GetCustomerInquiryFROMRegistration extends RegistrationEvent {
  GetCustomerInquiryFROMRegistration({required this.isOtpEnabled});
  final bool isOtpEnabled ;

}
