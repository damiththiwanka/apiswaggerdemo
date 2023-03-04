import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Alignment alignment;
  final double width;
  final double height;
  final EdgeInsets margin;
  final double elevation;
  final Widget child;
  final Color backgroundColor;
  final bool noCorner;

  const CardView({
     Key? key,
    required this.alignment,
    required this.width,
    required this.height,
    required this.elevation,
    required this.margin,
    required this.backgroundColor,
    required this.child,
    required this.noCorner
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        alignment: alignment,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: noCorner == true ? BorderRadius.circular(0) : BorderRadius.circular(8),
          boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: elevation == null ? 6.0 : elevation,
              )
            ]
        ),
        child: child
    );
  }
}
