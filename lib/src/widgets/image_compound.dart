// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:base3/src/values/app.constants.dart';
// import 'package:base3/src/values/images.dart';
//
// class ImageCompound extends StatelessWidget {
//   final double commonTopHeightDefault = 150;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         children: [
//           Positioned(
//             top: AppConstants.adaptiveScreen.setHeight(commonTopHeightDefault),
//             right: 30,
//             left: 0,
//             child: Container(
//               width: AppConstants.adaptiveScreen.setWidth(150),
//               height: AppConstants.adaptiveScreen.setHeight(150),
//               child: Image.asset(AppImages.backgroundRing),
//             ),
//           ),
//
//           Positioned(
//             top: AppConstants.adaptiveScreen.setHeight(commonTopHeightDefault - 10),
//             right: 0,
//             left: 0,
//             child: Container(
//               width: AppConstants.adaptiveScreen.setWidth(150),
//               height: AppConstants.adaptiveScreen.setHeight(150),
//               child: Image.asset(AppImages.userSuccess0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
