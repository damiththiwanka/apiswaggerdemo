import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_bottom_action_sheet_w.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_inner_widgets/circular_slider_battery_level_inner_w.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_inner_widgets/end_time_inner_w.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_inner_widgets/pickup_date_inner_w.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_inner_widgets/select_options_inner_w.dart';
import 'package:base3/src/widgets/bottom_action_sheet/custom_inner_widgets/start_time_inner_w.dart';
import 'package:base3/src/widgets/build_input_filed_with_dropdown.dart';
import 'package:base3/src/widgets/buttons/bottom_sheet_blackish_gradient_button.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/buttons/primary_button_with_blakish_gradient.dart';
import 'package:base3/src/widgets/custome_label_container.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:base3/src/widgets/input_filed_lable.dart';
import 'package:base3/src/widgets/start_time_bottom_action_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class CreateAChargingScheduleEntryScreen extends BaseView {
  @override
  _CreateAChargingScheduleEntryScreenState createState() => _CreateAChargingScheduleEntryScreenState();
}

class _CreateAChargingScheduleEntryScreenState extends BaseViewState {

  final scheduleNameController = TextEditingController();
  final _scheduleNameFocusNode = FocusNode();
  final slotNameController = TextEditingController();
  final _slotNameFocusNode = FocusNode();
  bool light = true;

  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(
              AppImages.appBarBackButton,
              width: 60,
            ),
            middle: Text(
              'Create Schedule',
              style: AppTextStyles().primaryTextColorFont28TextStyle(),
            ),
          ),
        ),
      ),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  "Explanation of schedule when no schedules have been created text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: AppTextStyles().offWhiteColorFont14LineHeight130TextStyle(),
                ),

                SizedBox(height: 30),

                CommonTextFormField(
                  type: TextFieldPage.name,
                  maxLength: 12,
                  onSubmitComplete: (String a) {},
                  hintText: 'Name of schedule',
                  prefix: Image.asset(
                    AppImages.userIcon,
                    color: AppColors.primaryGrayButtonGradientColorFirst,
                  ),
                  suffix: SizedBox(),
                  controller: scheduleNameController,
                  inputTitle: 'name',
                  inputType: KeyBoardType.TEXT,
                  validationType: ValidationType.NORMAL,
                  myUserNameFocusNode: _scheduleNameFocusNode,
                ),

                SizedBox(height: 20),

                Center(
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.grey,
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
                          color: AppColors.primaryGrayButtonGradientColorFirst
                              .withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(
                            1,
                            1,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:  MediaQuery.of(context).size.width - 50,
                          height: 200,
                          child: Image.asset(AppImages.initialScheduleStatusImage),),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "You can add multiple slots for a schedule",
                  style: AppTextStyles().offWhiteColorFont14TextStyle(),
                ),

                SizedBox(height: 40),

                /// botom action sheet
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector
                      (onTap: () {showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Colors.transparent,
                      elevation: 6,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          child: Container(
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
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
                            color: AppColors.primaryGrayButtonGradientColorFirst
                                .withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(
                              1,
                              1,
                            ),
                          ),
                            ],
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[

                                    SizedBox(height: 16,),

                                    CommonTextFormField(
                                      type: TextFieldPage.name,
                                      maxLength: 12,
                                      onSubmitComplete: (String a) {},
                                      hintText: 'Name of slot',
                                      prefix: Image.asset(
                                        AppImages.userIcon,
                                        color: AppColors.primaryGrayButtonGradientColorFirst,
                                      ),
                                      suffix: SizedBox(),
                                      controller: slotNameController,
                                      inputTitle: 'name',
                                      inputType: KeyBoardType.TEXT,
                                      validationType: ValidationType.NORMAL,
                                      myUserNameFocusNode: _slotNameFocusNode,
                                    ),

                                    SizedBox(height: 16,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        customBottomActionSheet(context: context, child: StartTimeInnerWidget(), buttonWidget: CustomLabelContainer(labelTitleText: 'Start Time', labelContainerWidthRatio: 0.45, opacity: 1, labelDescriptionText: '06 : 00 am',), height: 350),//BottomSheetBlackishGradientButton(buttonText: 'Start Time', buttonWidthRatio: 0.45, opacity: 1), height: 350),

                                        SizedBox(width: 8,),

                                        customBottomActionSheet(context: context, child: EndTimeInnerWidget(), buttonWidget: CustomLabelContainer(labelTitleText: 'End Time', labelContainerWidthRatio: 0.45, opacity: 1, labelDescriptionText: '06 : 00 pm',), height: 350),//BottomSheetBlackishGradientButton(buttonText: 'End Time', buttonWidthRatio: 0.45, opacity: 1), height: 350),

                                       // BottomSheetBlackishGradientButton(buttonText: 'End Time', buttonWidthRatio: 0.45, opacity: 1),
                                      ],
                                    ),

                                    SizedBox(height: 8,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        customBottomActionSheet(context: context, child: PickupDateInnerWidget(), buttonWidget: CustomLabelContainer(labelTitleText: 'Day', labelContainerWidthRatio: 0.45, opacity: 1, labelDescriptionText: 'Mon - Fri',), height: 350),//BottomSheetBlackishGradientButton(buttonText: 'Date', buttonWidthRatio: 0.45, opacity: 1), height: 350),

                                        SizedBox(width: 8,),

                                        customBottomActionSheet(context: context, child: SelectOptionsInnerWidget(), buttonWidget: CustomLabelContainer(labelTitleText: 'Power Cap', labelContainerWidthRatio: 0.45, opacity: 1, labelDescriptionText: '20kWh',), height: 350),//BottomSheetBlackishGradientButton(buttonText: 'Power Cap', buttonWidthRatio: 0.45, opacity: 1), height: 350),

                                      ],
                                    ),

                                    SizedBox(height: 8,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 8,),

                                        customBottomActionSheet(context: context, child: BatteryLevelInnerWidget(), buttonWidget: CustomLabelContainer(labelTitleText: 'Battery Level', labelContainerWidthRatio: 0.45, opacity: 1, labelDescriptionText: '20 %',), height: 500),//BottomSheetBlackishGradientButton(buttonText: 'Battery Level', buttonWidthRatio: 0.45, opacity: 1), height: 500),

                                        SizedBox(width: 8,),

                                        Expanded(child: Container()),
                                      ],
                                    ),

                                    SizedBox(height: 8,),

                                    Expanded(child: Container()),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        GestureDetector(
                                          onTap: (){Navigator.pop(context);},
                                            child: PrimaryButtonBlack(buttonText: 'CANCEL', buttonWidthRatio: 0.5, opacity: 1)),

                                        SizedBox(width: 8,),

                                       PrimaryButtonBlackishGradient(buttonWidthRatio: 0.5, opacity: 1, buttonText: 'ADD',),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );},
                    // {
                    //   showAdaptiveActionSheet(
                    //     bottomSheetColor: AppColors.grey,
                    //     context: context,
                    //     actions: <BottomSheetAction>[
                    //       BottomSheetAction(
                    //         title: Text("camera",
                    //           style: TextStyle(
                    //               color: AppColors
                    //                   .appPrimaryColor),
                    //         ),
                    //         onPressed: () {
                    //           //getImage();
                    //           Navigator.pop(context);
                    //         },
                    //       ),
                    //       BottomSheetAction(
                    //         title: Text("gallery",
                    //           style: TextStyle(
                    //               color: AppColors
                    //                   .appPrimaryColor),
                    //         ),
                    //         onPressed: () {
                    //           //_getFromGallery();
                    //           Navigator.pop(context);
                    //         },
                    //       ),
                    //     ],
                    //     cancelAction: CancelAction(
                    //         title: Text("cancel")),
                    //   );
                    // },
                        child: PrimaryButtonBlackishGradient(buttonText: 'ADD A SLOT', buttonWidthRatio: 0.5, opacity: 0.8)),
                  ],
                ),

                SizedBox(
                  height: 60,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Container()),

                    GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: PrimaryButtonBlack(buttonText: 'CANCEL', opacity: 1, buttonWidthRatio: 0.5,)),

                    SizedBox(width: 25,),

                    GestureDetector(
                        onTap: (){Navigator.pushNamed(context, NavigationRoutes.CAR_DETAILS_SCREEN);},
                        child: PrimaryButtonOrange(buttonText: 'SAVE', opacity: 1, buttonWidthRatio: 0.5,)),

                    Expanded(child: Container()),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
