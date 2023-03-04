import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base3/src/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool _visible = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    getVisibility();
    //getAppVersion();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Image.asset(AppImages.commonBackground,fit: BoxFit.fitWidth,),
            ),
            new Center(
              child: new Container(
                  padding: EdgeInsets.all( 100),
                  child: AnimatedOpacity(
                    duration: Duration(seconds: 3),
                    opacity: _visible ? 1.0 : 0.0,
                    child: new Container(child: Image.asset(AppImages.logo)),
                  )),
            ),
          ],
        ),
      );
  }

  getVisibility() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        _visible = true;
        getNavigation();
      });
    });
  }

  void getNavigation() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacementNamed(NavigationRoutes.WELCOME_SCREEN);
    });
  }

  void getAppVersion() {
    BlocProvider.of<AuthenticationBloc>(context)
        .add(
        AppVersionGet());
  }
}
