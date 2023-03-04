import 'dart:async';

import 'package:base3/src/models/user.dart';
import 'package:base3/src/repositories/authentication_repository.dart';
import 'package:base3/src/repositories/registration_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  late final RegistrationRepository _registrationRepository;
  late final AuthenticationRepository _authenticationRepository;

  RegistrationBloc(
      {required RegistrationRepository registrationRepository,
        required AuthenticationRepository authenticationRepository
        })
      : super(RegistrationInitialState()) {
    _registrationRepository = registrationRepository;
    _authenticationRepository = authenticationRepository;

  }

  @override
  Stream<RegistrationState> mapEventToState(RegistrationEvent event) async* {
    if (event is RegistrationInitialState) {
      yield RegistrationInitialState();
    } else if (event is PasswordChangedNewUser) {
      yield* _passwordChangedNewUser(event);
    }else if (event is GetUserFromRegistration) {
      yield* _getUserFromRegistration(event);
    }
  }


  Stream<RegistrationState> _passwordChangedNewUser(PasswordChangedNewUser event) async* {

      yield PasswordChanged(password: event.password);

  }

  Stream<RegistrationState> _getUserFromRegistration(GetUserFromRegistration event) async* {
    try {
      //User user =await  _authenticationRepository.getUser() ;
      //yield GetUserSuccessFromRegistration(user: user);
    } catch (e) {
      yield GetUserFailFromRegistration(error: e);
    }
  }


}
