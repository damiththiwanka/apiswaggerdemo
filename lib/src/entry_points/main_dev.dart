//
// import 'package:base3/src/helpers/nav/navigation_routes.dart';
// import 'package:base3/src/helpers/storage/preferences.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../../app.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   //NavigationRoutes().setupLocator();
//
//   final sharedPrefService = await SharedPreferencesService.instance;
//
//   String env = await sharedPrefService!.readDate("ENV") as String ;
//   env = env.length<=0 ?"1":env;
//   await sharedPrefService.saveData("ENV",env);
//
//   if( env == "1")
//   {
//
//
//     FlavorConfig(
//         name: 'dev',
//         color: Colors.green,
//         location: BannerLocation.topStart,
//         variables: {
//           'baseUrl': AppStrings.DEV_baseUrl,
//           'bankBasePath':AppStrings.DEV_bankBasePath,
//           'authServerBasePath':AppStrings.DEV_authServerBasePath,
//           'kycServiceBasePath':AppStrings.DEV_kycServiceBasePath,
//           'flavor': Flavor.DEV,
//         });
//   }else if( env == "2") {
//     FlavorConfig(
//         name: 'qa',
//         color: Colors.orange,
//         location: BannerLocation.topStart,
//         variables: {
//           'baseUrl': AppStrings.QA_baseUrl,
//           'bankBasePath':AppStrings.QA_bankBasePath,
//           'authServerBasePath':AppStrings.QA_authServerBasePath,
//           'kycServiceBasePath':AppStrings.QA_kycServiceBasePath,
//           'flavor': Flavor.QA,
//         });
//   }else if( env == "3") {
//     FlavorConfig(
//         name: 'uat',
//         color: Colors.yellow,
//         location: BannerLocation.topStart,
//         variables: {
//           'baseUrl': AppStrings.UAT_baseUrl,
//           'bankBasePath':AppStrings.UAT_bankBasePath,
//           'authServerBasePath':AppStrings.UAT_authServerBasePath,
//           'kycServiceBasePath':AppStrings.UAT_kycServiceBasePath,
//           'flavor': Flavor.UAT,
//         });
//   }else if( env == "4") {
//     FlavorConfig(
//         name: 'prod',
//         color: Colors.blue,
//         location: BannerLocation.topStart,
//         variables: {
//           'baseUrl': AppStrings.PROD_baseUrl,
//           'bankBasePath':AppStrings.PROD_bankBasePath,
//           'authServerBasePath':AppStrings.PROD_authServerBasePath,
//           'kycServiceBasePath':AppStrings.PROD_kycServiceBasePath,
//           'flavor': Flavor.PRODUCTION,
//         });
//   }



//
//     WidgetsFlutterBinding.ensureInitialized();
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   await Firebase.initializeApp();
//   _enableCrashlytics();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//       .then((_) {
//     runApp(
//       GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         child: FlavorBanner(
//           location: BannerLocation.topStart,
//           child: BaseBlocProvider(child: App()), // Wrap your app
//         ),
//       ),
//     );;
//   });
//
//
//   ///Enable this for debug preview
//   // runApp(
//   //   GestureDetector(
//   //     behavior: HitTestBehavior.translucent,
//   //     child:DevicePreview(
//   //       enabled: false,
//   //       builder: (context) => BaseBlocProvider(child: App()), // Wrap your app
//   //     ),
//   //   ),
//   // );
// }

// Future<void> _enableCrashlytics() async {
//   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
//
//   /// Pass all uncaught errors to Crashlytics.
//   Function originalOnError = FlutterError.onError as Function;
//   FlutterError.onError = (FlutterErrorDetails errorDetails) async {
//     await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
//
//     /// Forward to original handler.
//     originalOnError(errorDetails);
//   };
// }
