import 'package:base3/src/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/blocs/registration/registration_bloc.dart';
import 'package:base3/src/blocs/translation/language_bloc.dart';
import 'package:base3/src/models/secure_storage.dart';
import 'package:base3/src/repositories/auth.repository.dart';
import 'package:base3/src/repositories/authentication_repository.dart';
import 'package:base3/src/repositories/registration_repository.dart';
import 'package:base3/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BaseBlocProvider extends StatelessWidget {
  final Widget child;
  SecureStorage? secureStorage;

  BaseBlocProvider({Key? key, required this.child}) : super(key: key)
  {
    secureStorage = SecureStorage();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<AuthenticationBloc>(
        create: (BuildContext context) => AuthenticationBloc(
            userRepository: UserRepository(),
            authenticationRepository: AuthenticationRepository(secureStorage)),
      ),
      BlocProvider<LanguageBloc>(
          create: (_) => LanguageBloc()..add(LanguageLoadStarted()),
      ),
      BlocProvider<LoginBloc>(
        create:
            (BuildContext context) => LoginBloc(authRepo: AuthenticationRepository(secureStorage)),
      ),

      BlocProvider<RegistrationBloc>(
        create: (BuildContext context) => RegistrationBloc(registrationRepository: RegistrationRepository(secureStorage),authenticationRepository:AuthenticationRepository(secureStorage)),
      ),
      // BlocProvider<ProfileBloc>(
      //   create: (BuildContext context) => ProfileBloc(profileRepository: ProfileRepository(secureStorage),),
      // ),
      // BlocProvider<OtpBloc>(
      //   create: (BuildContext context) => OtpBloc(registrationRepository: RegistrationRepository() ,authenticationRepository: AuthenticationRepository(secureStorage),forgotPasswordRepository: ForgotPasswordRepository(), profileRepository: ProfileRepository(),),
      // ),
      // BlocProvider<TermsAndConditionsBloc>(
      //   create: (BuildContext context) => TermsAndConditionsBloc(),
      // ),
      // BlocProvider<ForgotPasswordBloc>(
      //   create: (BuildContext context) => ForgotPasswordBloc(forgotPasswordRepository: ForgotPasswordRepository()),
      // ),

    ], child: child);
  }
}
