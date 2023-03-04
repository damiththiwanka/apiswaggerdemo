import 'package:flutter/material.dart';
import 'package:base3/src/widgets/logo.dart';
import 'package:base3/src/widgets/text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  final Widget leading;
  final String title;
  final List<Widget> actions;
  final Color color;
  final double elevation;
  final bool logo;
  final bool hideBackArrow;

  const Toolbar({Key? key, required this.hideBackArrow, required this.logo, required this.leading, required this.title, required this.actions, required this.color, required this.elevation}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: hideBackArrow == true ? false : true,
      title: logo == true ?
          Center(child: Logo(header: true, small: true))
        :
          CustomText(
            text: title,
            accent: true,
            big: true,
          ),
      leading: leading,
      actions: actions,
      elevation: elevation != null ? elevation : 0.0
    );
  }
}