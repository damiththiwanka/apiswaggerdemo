import 'package:base3/base_view.dart';
import 'package:base3/src/helpers/nav/navigation_routes.dart';
import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/values/images.dart';
import 'package:base3/src/values/strings.dart';
import 'package:base3/src/widgets/build_input_filed_with_dropdown.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_grey.dart';
import 'package:base3/src/widgets/buttons/primary_button_orange.dart';
import 'package:base3/src/widgets/data_input_forms/common_text_form_field.dart';
import 'package:base3/src/widgets/data_input_forms/input_field_with_dropdown.dart';
import 'package:base3/src/widgets/input_filed_lable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddACarEntryScreen extends BaseView {

  @override
  _AddACarEntryScreenState createState() => _AddACarEntryScreenState();
}

class _AddACarEntryScreenState extends BaseViewState {
  final myCarNameController = TextEditingController();
  final _myCarNameFocusNode = FocusNode();
  final licensePlateNumberController = TextEditingController();
  final _licensePlateNumberFocusNode = FocusNode();


  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          child: CupertinoNavigationBar(
            backgroundColor: AppColors.primaryGrayButtonGradientColorSecond,
            leading: Image.asset(AppImages.appBarBackButton, width: 80,),
            middle: Text('Add A Car', style: AppTextStyles().welcomeTextStyle(),),
          ),
          // Row(
          //   children: [
          //     Container(
          //       color: Colors.blue,
          //       height: 40,
          //       width: 40,
          //     ),
          //
          //      Text("Add A Car",
          //      style: AppTextStyles().welcomeTextStyle(),
          //      ),
          //   ],
          // ),
        ),
      ),
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
              offset: Offset(5,5),
            ),
          ],
          // color: colors.AppColors.buttonColor,
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              inputFieldLabel("Personal"),

              SizedBox(
                height: 16,
              ),
              CommonTextFormField(
                type: TextFieldPage.name,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'Name Your Car',
                prefix: null,
                suffix: SizedBox(),
                controller: myCarNameController,
                inputTitle: 'car name',
                inputType: KeyBoardType.TEXT,
                validationType: ValidationType.NORMAL,
                myUserNameFocusNode: _myCarNameFocusNode,
              ),


              SizedBox(
                height: 6,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(width: 100, height: 20,child: Text("Ex : Dad's Tesla", style: AppTextStyles().descriptionTextGreyFont12(),)),
                ],
              ),


              SizedBox(
                height: 20,
              ),

              CommonTextFormField(
                type: TextFieldPage.name,
                maxLength: 12,
                onSubmitComplete: (String a) {},
                hintText: 'License Plate Number',
                prefix: null,
                suffix: SizedBox(),
                controller: licensePlateNumberController,
                inputTitle: 'license plate number',
                inputType: KeyBoardType.TEXT,
                validationType: ValidationType.NORMAL,
                myUserNameFocusNode: _licensePlateNumberFocusNode,
              ),

              SizedBox(
                height: 30,
              ),

              inputFieldLabel("Car"),

              SizedBox(
                height: 6,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 100,child: InputFieldWithDropdown(context: context, value: "Make ", onChoose: (){}, items: ["car 1", "car 2"])),

                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 100,child: InputFieldWithDropdown(context: context, value: "Model ", onChoose: (){}, items: ["model 1", "model 2"])),
                ],
              ),

              inputFieldLabel("Power"),

              SizedBox(
                height: 6,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Connector ", onChoose: (){}, items: ["connector 1", "connector 2"])),

                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Power ", onChoose: (){}, items: ["power 1", "power 2"])),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,child: InputFieldWithDropdown(context: context, value: "Connector ", onChoose: (){}, items: ["connector 1", "connector 2"])),

                  Container(width: MediaQuery.of(context).size.width * 0.5 - 30, height: 80,),
                ],
              ),

              Expanded(child: Container()),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Container()),

                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: PrimaryButtonBlack(buttonText: 'CANCEL', opacity: 1, buttonWidthRatio: 0.5,)),

                  SizedBox(width: 25,),

                  GestureDetector(
                      onTap: (){Navigator.pushNamed(context, NavigationRoutes.ADD_A_CAR_ENTRY_SCREEN);},
                      child: PrimaryButtonOrange(buttonText: 'NEXT', opacity: 1, buttonWidthRatio: 0.5,)),

                  Expanded(child: Container()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
