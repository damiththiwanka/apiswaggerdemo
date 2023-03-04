import 'package:base3/src/pages/add_a_car/add_a_car_entry_screen.dart';
import 'package:base3/src/pages/add_a_car/car_details_screen.dart';
import 'package:base3/src/pages/add_a_car/my_car_list_screen.dart';
import 'package:base3/src/pages/add_a_car/select_a_car_screen.dart';
import 'package:base3/src/pages/charge_status_screen/chaging_status_entry_screen.dart';
import 'package:base3/src/pages/charge_status_screen/charging_schedule_navigation_screen.dart';
import 'package:base3/src/pages/forgot_password/forgot_password_entry_screen.dart';
import 'package:base3/src/pages/forgot_password/reset_password_screen.dart';
import 'package:base3/src/pages/otp/otp_screen.dart';
import 'package:base3/src/pages/profile_screen/personal_info_screen.dart';
import 'package:base3/src/pages/profile_screen/profile_screen.dart';
import 'package:base3/src/pages/schedule_status/create_schedule_entry_screen.dart';
import 'package:base3/src/pages/schedule_status/schedule_status_entry_screen.dart';
import 'package:base3/src/pages/sign_in/sign_in_entry_screen.dart';
import 'package:base3/src/pages/sign_up/sign_up_entry_screen.dart';
import 'package:base3/src/pages/sign_up/sign_up_password_setup_screen.dart';
import 'package:base3/src/pages/sign_up/sign_up_success_screen.dart';
import 'package:base3/src/pages/welcome/welcome_screen.dart';
import 'package:base3/src/pages/welcome/welcome_screen_second.dart';
import 'package:base3/src/widgets/pop_up_card_w.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/pages/splash/splash.page.dart';

/// Project MadayaS
/// Created by Madushank Madakumbura on 20/01/23

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

class NavigationRoutes {
  static const String WELCOME_SCREEN = "welcome_screen";
  static const String WELCOME_SCREEN_SECOND = "welcome_screen_second";
  static const String SIGN_UP_ENTRY_SCREEN = "sign_up_entry_screen";
  static const String SIGN_IN_ENTRY_SCREEN = "sign_in_entry_screen";
  static const String SIGN_UP_PASSWORD_SETUP_SCREEN = "sign_up_password_setup_screen";
  static const String SIGN_UP_SUCCESS_SCREEN = "sign_up_success_screen";
  static const String FORGOT_PASSWORD_ENTRY_SCREEN = 'forgot_password_entry_screen';
  static const String RESET_PASSWORD_ENTRY_SCREEN = 'reset_password_entry_screen';
  static const String OTP_SCREEN = 'otp_screen';
  static const String PROFILE_SCREEN = 'profile_screen';
  static const String ADD_A_CAR_ENTRY_SCREEN = 'add_a_car_entry_screen';
  static const String SELECT_A_CAR_SCREEN = 'select_a_car_screen';
  static const String CAR_DETAILS_SCREEN = 'car_details_screen';
  static const String MY_CAR_LIST_SCREEN = 'my_car_list_screen';
  static const String CHARGING_STATUS_ENTRY_SCREEN = 'charging_status_entry_Screen';
  static const String CHARGING_SCHEDULE_NAVIGATION_SCREEN = 'charging_schedule_navigation_screen';
  static const String SCHEDULE_STATUS_ENTRY_SCREEN = 'schedule_status_entry_screen';
  static const String CREATE_A_CHARGING_SCHEDULE__ENTRY_SCREEN = 'create_a_charging_schedule_screen';
  static const String POP_UP_CARD_W = 'pop_up_card_w';
  static const String PERSONAL_INFO_SCREEN = 'personal_info_screen';






  static const String SPLASH_LOGO = 'splash-logo';
  static const String FORGOT_PASSWORD_SCREEN = 'forgot-password-screen';
  static const String USER_REGISTRATION_ENTRY_SCREEN =
      'user_registration_entry_screen';
  static const String OTP_CONFIRMATION_SCREEN = 'otp-confirmation-screen';
  static const String PASSWORD_SETUP_SUCCESS_SCREEN =
      'password_setup_success_screen';
  static const String NEW_PASSWORD_SETUP_SCREEN = 'new_password_screen';
  static const String KYC_PERSONAL_INFO_SCREEN = 'personal_info_screen';
  static const String KYC_ADDRESS_SCREEN = 'kyc_address_screen';
  static const String KYC_EMPLOYMENT_INF0_SCREEN = 'kyc_employment_info_screen';
  static const String KYC_EMPLOYMENT_INF0_SECOND_SCREEN =
      'kyc_employment_info_screen_2';
  static const String KYC_SELFIE_IMAGE_SCREEN = 'kyc_selfie_image_screen';
  static const String KYC_SELFIE_IMAGE_SECOND_SCREEN =
      'kyc_selfie_image_second_screen';
  static const String KYC_DOCUMENT_SCREEN = 'kyc_document_screen';
  static const String KYC_VIDEO_CONFERENCE_SCREEN =
      'kyc_video_conference_screen';
  static const String KYC_ENTRY_SCREEN = 'kyc_entry_screen';
  static const String KYC_REGISTRATION_COMPLETED_SCREEN =
      'kyc_registration_completed_screen';

  static const String CAMERA = 'camera';
  static const String PASSWORD_CONFIRMATION_SCREEN =
      'password-confirmation-screen';
  static const String TERMS_AND_CONDITION_SCREEN =
      'terms-and-conditions-screen';
  static const String REGISTRATION_OTP_CONFIRMATION_SCREEN =
      'registration-otp-confirmation-screen';
  static const String REGISTRATION_CONFIRMATION_SCREEN =
      'registration-confirmation-screen';
  static const String DASHBOARD = 'dashboard-screen';
  static const String REGISTRATION_OTP_RESEND_SCREEN =
      'otp_confirmation_resend_screen';
  static const String INITIAL_REGISTRATION_SCREEN =
      'initial_registration_screen';

  //static const String REGISTRATION_CONFIRMATION_SCREEN = 'registration-confirmation_screen';
  static const String SLIVER_SCREEN = 'sliver_scrollview';

  static const String PROFILE_MENU_SCREEN = 'profile_menu';
  static const String EMAIL_CHANGE_SCREEN = 'email_change_entry_screen';
  static const String EMAIL_OTP_CONFIRMATION_SCREEN =
      'email-otp-confirmation-screen';
  static const String EMAIL_SUCCESS_SCREEN = 'email-success-screen';

  static const String CHANGE_PASSWORD_ENTRY_SCREEN =
      'change_password_entry_screen';
  static const String CHANGE_PASSWORD_OTP_CONFIRMATION_SCREEN =
      'change_password_otp_confirmation_screen';
  static const String CHANGE_PASSWORD_SUCCESS_SCREEN =
      'change_password_success_screen';
  static const String CHANGE_MOBILE_ENTRY_SCREEN = 'change_mobile_entry_screen';
  static const String CHANGE_MOBILE_OTP_CONFIRMATION_SCREEN =
      'change_mobile_otp_confirmation_screen';
  static const String CHANGE_MOBILE_SUCCESS_SCREEN =
      'change_mobile_success_screen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {

      ///login screen navigation routes  ---------------------------------------------------------
      case NavigationRoutes.WELCOME_SCREEN:
        return MaterialPageRoute(
          builder: (_) => WelcomeScreen(),
          settings: RouteSettings(name: NavigationRoutes.WELCOME_SCREEN),
        );

        /// welcome
      case NavigationRoutes.WELCOME_SCREEN_SECOND:
        return MaterialPageRoute(
          builder: (_) => WelcomeSecondScreen(),
          settings: RouteSettings(name: NavigationRoutes.WELCOME_SCREEN_SECOND),
        );

      case NavigationRoutes.SPLASH_LOGO:
        return MaterialPageRoute(
          builder: (_) => SplashPage(),
          settings: RouteSettings(name: NavigationRoutes.SPLASH_LOGO),
        );


        /// sign up
      case NavigationRoutes.SIGN_UP_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SignUpEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.SIGN_UP_ENTRY_SCREEN),
        );

      case NavigationRoutes.SIGN_UP_PASSWORD_SETUP_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SignUpPasswordSetupScreen(),
          settings: RouteSettings(name: NavigationRoutes.SIGN_UP_PASSWORD_SETUP_SCREEN),
        );

      case NavigationRoutes.SIGN_UP_SUCCESS_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SignUpSuccessScreen(),
          settings: RouteSettings(name: NavigationRoutes.SIGN_UP_SUCCESS_SCREEN),
        );


        /// sign in
      case NavigationRoutes.SIGN_IN_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SignInEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.SIGN_IN_ENTRY_SCREEN),
        );


        /// forgot password
      case NavigationRoutes.FORGOT_PASSWORD_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.FORGOT_PASSWORD_ENTRY_SCREEN),
        );

      case NavigationRoutes.RESET_PASSWORD_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
          settings: RouteSettings(name: NavigationRoutes.RESET_PASSWORD_ENTRY_SCREEN),
        );

        /// otp
      case NavigationRoutes.OTP_SCREEN:
        return MaterialPageRoute(
          builder: (_) => OTPScreen(),
          settings: RouteSettings(name: NavigationRoutes.OTP_SCREEN),
        );

        /// profile
      case NavigationRoutes.PROFILE_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(title: ''),
          settings: RouteSettings(name: NavigationRoutes.PROFILE_SCREEN),
        );

      case NavigationRoutes.PERSONAL_INFO_SCREEN:
        return MaterialPageRoute(
          builder: (_) => PersonalInfoScreen(),
          settings: RouteSettings(name: NavigationRoutes.PERSONAL_INFO_SCREEN), //SELECT_A_CAR_SCREEN
        );

        /// add a car
      case NavigationRoutes.ADD_A_CAR_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => AddACarEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.ADD_A_CAR_ENTRY_SCREEN), //
        );

      case NavigationRoutes.SELECT_A_CAR_SCREEN:
        return MaterialPageRoute(
          builder: (_) => SelectACarScreen(),
          settings: RouteSettings(name: NavigationRoutes.SELECT_A_CAR_SCREEN), //SELECT_A_CAR_SCREEN
        );

      case NavigationRoutes.CAR_DETAILS_SCREEN:
        return MaterialPageRoute(
          builder: (_) => CarDetailsScreen(),
          settings: RouteSettings(name: NavigationRoutes.CAR_DETAILS_SCREEN), //SELECT_A_CAR_SCREEN
        );

      case NavigationRoutes.MY_CAR_LIST_SCREEN:
        return MaterialPageRoute(
          builder: (_) => MyCarListScreen(),
          settings: RouteSettings(name: NavigationRoutes.MY_CAR_LIST_SCREEN), //SELECT_A_CAR_SCREEN
        );

        /// charge status
      case NavigationRoutes.CHARGING_STATUS_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ChargingStatusEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.CHARGING_STATUS_ENTRY_SCREEN), //SELECT_A_CAR_SCREEN
        );

      case NavigationRoutes.CHARGING_SCHEDULE_NAVIGATION_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ChargingScheduleNavigationScreen(),
          settings: RouteSettings(name: NavigationRoutes.CHARGING_SCHEDULE_NAVIGATION_SCREEN), //SELECT_A_CAR_SCREEN
        );

        /// schedule status
      case NavigationRoutes.SCHEDULE_STATUS_ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => ScheduleStatusEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.SCHEDULE_STATUS_ENTRY_SCREEN), //SELECT_A_CAR_SCREEN
        );

      case NavigationRoutes.CREATE_A_CHARGING_SCHEDULE__ENTRY_SCREEN:
        return MaterialPageRoute(
          builder: (_) => CreateAChargingScheduleEntryScreen(),
          settings: RouteSettings(name: NavigationRoutes.CREATE_A_CHARGING_SCHEDULE__ENTRY_SCREEN), //SELECT_A_CAR_SCREEN
        );


      case NavigationRoutes.POP_UP_CARD_W:
        return MaterialPageRoute(
          builder: (_) => PopupTests(),
          settings: RouteSettings(name: NavigationRoutes.POP_UP_CARD_W), //SELECT_A_CAR_SCREEN
        );


      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('Invalid Route'),
                  ),
                ));
    }
  }

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }
}

class MyCustomFadeRoute<T> extends PageRoute<T> {
  final Widget child;

  MyCustomFadeRoute(this.child);

  @override
  // TODO: implement barrierColor
  Color? get barrierColor => Colors.black;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(milliseconds: 800);
}
