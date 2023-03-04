import 'package:anchored_popups/anchored_popup_region.dart';
import 'package:anchored_popups/anchored_popups.dart';
import 'package:flutter/material.dart';
import 'package:separated_column/separated_column.dart';


class PopupTests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: AnchoredPopUpRegion(
                anchor: Alignment.centerLeft,
                popAnchor: Alignment.centerRight,
                popChild: Card(child: Text("centerLeft to centerRight")),
                child: Container(width: 50, height: 50, child: Placeholder())),
          ),
          Center(
            child: SeparatedColumn(
              mainAxisAlignment: MainAxisAlignment.center,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10.0,);
              },
              //(c) => SizedBox(height: 10.0,),
              children: [
                Text("Hover over the boxes to show different behaviors."),
                AnchoredPopUpRegion(
                  anchor: Alignment.bottomLeft,
                  popAnchor: Alignment.bottomRight,
                  popChild: Card(child: Text("BottomLeft to BottomRight")),
                  child: Container(width: 50, height: 50, child: Placeholder()),
                ),

                AnchoredPopUpRegion(
                    anchor: Alignment.center,
                    popAnchor: Alignment.center,
                    popChild: Card(child: Text("Center to Center")),
                    child: Container(width: 50, height: 50, child: Placeholder())),
                OutlinedButton(onPressed: () {}, child: Text("Btn1")),
                OutlinedButton(onPressed: () {}, child: Text("Btn2")),

                /// Example of a card that, when clicked shows a form.
                AnchoredPopUpRegion(
                  mode: PopUpMode.clickToToggle,
                  anchor: Alignment.centerRight,
                  popAnchor: Alignment.centerLeft,
                  buttonBuilder: (_, child, show) {
                    return TextButton(child: child, onPressed: show);
                  },
                  // This is what is shown when the popup is opened:
                  popChild: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("CenterRight to CenterLeft"),
                          TextButton(
                              onPressed: () {
                                AnchoredPopups.of(context)!.hide();
                              },
                              child: Text("Close Popup"))
                        ],
                      )),
                  // The region that will activate the popup
                  child: Container(
                    child: Card(
                      child: Text("Click me for more info..."),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}