import 'package:base3/src/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/values/colors.dart' as colors;

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: colors.AppColors.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  //USER ACCOUNT HEADER

                  UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          color: colors.AppColors.accentColor
                      ),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Center(
                          child: CustomText(text: "TG", accent: true, title: true),
                        ),
                        // /backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/4768926?s=400&v=4')
                      ),
                      accountName: CustomText(
                          dark: true,
                          bold: true,
                          text: "Tiago Guizelini"
                      ),
                      accountEmail: null
                  ),

                ],
              ),
            ),

            // SAIR / LOGOUT

            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                  onTap: () => print('log out'),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: colors.AppColors.primaryColor,
                  ),
                  title: CustomText(text: "Exit")
              ),
            )
          ],
        ),
      ),
    );
  }
}