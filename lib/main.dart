import 'package:base3/src/blocs/base/bloc_provider.dart';
import 'package:base3/src/blocs/translation/language_bloc.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_long_orange.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BaseBlocProvider(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, LanguageState) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Sheha'),
          onGenerateRoute: NavigationRoutes.generateRoutes,
          //initialRoute: NavigationRoutes.SPLASH_LOGO,
          //initialRoute: NavigationRoutes.SPLASH_LOGO,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.backgroundGradientColorThird,
              AppColors.backgroundGradientColorSecond,
              AppColors.backgroundGradientColorFirst,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.backgroundGradientColorThird.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(5, 5),
            ),
          ],
          // color: colors.AppColors.buttonColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60,
                width: 300,
                child: Image.asset(
                  AppImages.logoCombination,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: 30, left: 30, bottom: 20, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  AppImages.backgroundMainImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              "Welcome",
              style: AppTextStyles().welcomeTextStyle(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Space for the tag line",
              style: AppTextStyles().primaryColorLightFont16TextStyle(),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Container()),
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, NavigationRoutes.WELCOME_SCREEN);
                    },
                    child: PrimaryButtonGrey(
                      buttonText: 'SKIP',
                      opacity: 1,
                      buttonWidthRatio: 0.5,
                    )),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, NavigationRoutes.WELCOME_SCREEN_SECOND);
                    },
                    child: PrimaryButtonOrange(
                      buttonText: 'NEXT',
                      opacity: 1,
                      buttonWidthRatio: 0.5,
                    )),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
