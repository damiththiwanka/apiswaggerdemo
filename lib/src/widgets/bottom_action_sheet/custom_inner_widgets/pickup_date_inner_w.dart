import 'package:base3/src/values/app_text_styles.dart';
import 'package:base3/src/widgets/buttons/primary_button_black.dart';
import 'package:base3/src/widgets/buttons/primary_button_with_blakish_gradient.dart';
import 'package:flutter/material.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;
import 'package:base3/src/values/colors.dart';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 06/02/23 23:16
///

List<String> items = [
  "Daily",
  "Mon - Fri",
  "Sat - Sun",
  "Custom",
];


class PickupDateInnerWidget extends StatefulWidget {

  @override
  _PickupDateInnerWidgetState createState() => _PickupDateInnerWidgetState();
}

class _PickupDateInnerWidgetState extends State<PickupDateInnerWidget> {

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
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Day",
            style: AppTextStyles().offWhiteColorFont22TextStyle(),
          ),

          SizedBox(height: 25,),

          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: AppColors.primaryGrayButtonGradientColorSecond,
            child: SampleApp(),
          ),



          Expanded(child: Container()),


          SizedBox(height: 6,),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: PrimaryButtonBlack(
                      buttonText: 'CANCEL', buttonWidthRatio: 0.5, opacity: 1)),
              SizedBox(
                width: 8,
              ),
              PrimaryButtonBlackishGradient(
                buttonWidthRatio: 0.5,
                opacity: 1,
                buttonText: 'NEXT',
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new SelectableWidget(
          new SelectableWidgetViewModel(
            items[index],
            isSelected: false,
          ),
        );
      },
    );
  }
}

class SelectableWidget extends StatefulWidget {
  final SelectableWidgetViewModel viewModel;

  SelectableWidget(this.viewModel);

  @override
  State<StatefulWidget> createState() {
    return SelectableWidgetState();
  }
}

class SelectableWidgetState extends State<SelectableWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Container container;

    if (widget.viewModel.isSelected) {
      container = new Container(
        alignment: Alignment.centerLeft,
        height: 50.0,
        color: AppColors.primaryOrangeButtonGradientColorFirst,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: new Text(
            widget.viewModel.title,
            style: new TextStyle(color: AppColors.black, fontSize: 14.0),
            textAlign: TextAlign.start,
          ),
        ),
      );
    } else {
      container = new Container(
        alignment: Alignment.centerLeft,
        height: 50.0,
        color: AppColors.primaryGrayButtonGradientColorSecond,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: new Text(
            widget.viewModel.title,
            style: new TextStyle(color: AppColors.offWhiteColor, fontSize: 14.0),
            textAlign: TextAlign.start,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: ()
      {
        setState(() {
          //here am trying to implement single selection for the options in the list but it don't work well
          for(int i = 0; i < items.length; i++) {
            // if (i == index) {
            //   setState(() {
            //     items[index].isSelected = true;
            //   });
            // } else {
            //   setState(() {
            //     items[index].isSelected = false;
            //   });
            // }
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: container,
      ),
    );
  }
}

class SelectableWidgetViewModel {
  bool isSelected;
  String title;

  SelectableWidgetViewModel(this.title, {this.isSelected = false});
}