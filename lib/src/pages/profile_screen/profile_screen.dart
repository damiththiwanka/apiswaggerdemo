import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  Image icon;
  int id;

  DrawerItem({required this.title, required this.icon, required this.id});
}

class ProfileScreen extends BaseView {
  ProfileScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BaseViewState {
  int _counter = 0;

  String userPicUrl = "https://picsum.photos/250?image=9";

  List<DrawerItem> drawerItems = [
    DrawerItem(
        id: 0,
        title: "Personal Information",
        icon: Image.asset(AppImages.userIcon)),
    DrawerItem(
        id: 1, title: "Reset Password", icon: Image.asset(AppImages.userIcon)),
    DrawerItem(id: 2, title: "My Cars", icon: Image.asset(AppImages.userIcon)),
    DrawerItem(
        id: 3, title: "My Home Charger", icon: Image.asset(AppImages.userIcon)),
  ];

  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.2,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 50,),

              // Container(
              //   width: 160,
              //   height: 160,
              //   decoration: BoxDecoration(
              //     borderRadius:
              //     BorderRadius.circular(80),
              //     color: AppColors.fieldGreyColor,
              //   ),
              // ),

          // Container(
          //   child: CircleAvatar(
          //       radius: 70,
          //       backgroundColor: AppColors.fieldGreyColor,
          //       child: CachedNetworkImage(
          //         fit: BoxFit.contain,
          //         height: (MediaQuery.of(context)
          //             .size
          //             .height *
          //             0.23) *
          //             0.65,
          //         imageUrl: userPicUrl,
          //         imageBuilder:
          //             (context, imageProvider) =>
          //             CircleAvatar(
          //               backgroundImage:
          //               imageProvider,
          //               radius: 50,
          //             ),
          //         placeholder: (context, url) =>  SizedBox(width: 20,height: 20, child:CircularProgressIndicator() ,) ,
          //         errorWidget:
          //             (context, url, error) =>
          //             CircleAvatar(
          //               backgroundColor: Colors.transparent,
          //               backgroundImage: AssetImage(
          //                   AppImages
          //                       .userIcon),
          //               radius: 70,
          //             ),
          //       )),
          // ),

              SizedBox(height: 6,),

              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Sheha Madakumbura",
                    style: AppTextStyles().primaryTextColorFont32TextStyle(),
                  ),
                ),
              ),


              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: drawerItems.map((item) {
                    return Container(
                      height: 70,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: AppColors.fieldGreyColor,
                        child: ListTile(
                          onTap: () {
                            if (item.id == 0) {
                              Navigator.pushNamed(
                                  context,
                                  NavigationRoutes
                                      .PERSONAL_INFO_SCREEN);
                            } else if (item.id == 1) {
                              // Navigator.pushNamed(
                              //     context,
                              //     NavigationRoutes
                              //         .PROFILE_OPTIONS_SCREEN);
                            } else if (item.id == 3) {
                              // Navigator.pushNamed(
                              //     context,
                              //     NavigationRoutes.MY_DEVICE_SCREEN);
                            } else {
                              // Navigator.pushNamed(
                              //     context,
                              //     NavigationRoutes
                              //         .CHANGE_LANGUAGE_SCREEN);
                            }
                          },
                          leading: SizedBox(
                            width: 35,
                            height: 35,
                            child: item.icon,
                          ),
                          trailing: Container(
                            width: 50,
                            height: 60,
                            child: Image.asset(
                              AppImages.arrowMenu,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                          title: Text(
                            item.title,
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.white.withOpacity(0.6),
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: AppColors.fieldGreyColor,
                    child: ListTile(
                      leading: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.asset(AppImages.userIcon),
                      ),
                      trailing: Container(
                        width: 50,
                        height: 60,
                        child: Image.asset(
                          AppImages.arrowMenu,
                          color: AppColors.white.withOpacity(0.8),
                        ),
                      ),
                      title: Text(
                        'Log Out',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white.withOpacity(0.6),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 8,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: AppColors.fieldGreyColor,
                    child: ListTile(
                      leading: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.asset(AppImages.userIcon),
                      ),
                      trailing: Container(
                        width: 50,
                        height: 60,
                        child: Image.asset(
                          AppImages.arrowMenu,
                          color: AppColors.white.withOpacity(0.8),
                        ),
                      ),
                      title: Text(
                        'Delete My Account',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white.withOpacity(0.6),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
