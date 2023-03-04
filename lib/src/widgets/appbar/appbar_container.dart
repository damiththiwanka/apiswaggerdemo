import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          image: AssetImage(
              'assets/png/appbar_background_image.png'),
        ),
      ),
    );
  }
}

