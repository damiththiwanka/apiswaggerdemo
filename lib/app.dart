import 'dart:async';

import 'package:base3/src/blocs/translation/language_bloc.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_view.dart';
import 'src/helpers/nav/navigation_routes.dart';
import 'src/helpers/nav/navigation_routes.dart';

Timer? _rootTimer;

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var textStyles = AppTextStyles();
  var decorationStyles = AppDecoration();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, languageState) {
        return Listener(
          behavior: HitTestBehavior.translucent,
          // onPointerDown: _handleUserInteraction,
          // onPointerMove: _handleUserInteraction,
          // onPointerUp: _handleUserInteraction,
          child: MaterialApp(
            ///Enable this for debug preview
            // useInheritedMediaQuery: true,
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            ///
            //navigatorKey: locator<NavigationRoutes>().,
            ///Uncomment this for debug preview disabled
            locale: languageState.locale,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              // GlobalMaterialLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
              // AppLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en', 'US'),
            ],
            onGenerateRoute: NavigationRoutes.generateRoutes,
            initialRoute: NavigationRoutes.SPLASH_LOGO,
          ),
        );
      },
    );
  }
}
