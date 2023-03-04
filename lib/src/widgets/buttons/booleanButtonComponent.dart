import 'package:flutter/cupertino.dart';
import 'package:base3/src/values/colors.dart';
import 'package:base3/src/widgets/buttons/secondary_button.dart';
import 'package:base3/src/values/app_text_styles.dart' as styles;

class BooleanButtonComponent extends StatelessWidget {
  final String questionText;

  const BooleanButtonComponent({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(questionText,
          style: styles.subtitleTextFont14,),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SecondaryButton(buttonText: 'YES', buttonColor: AppColors.primaryTextColor, buttonTextColor: AppColors.white,),
            SizedBox(width: 15,),
            SecondaryButton(buttonText: 'NO', buttonColor: AppColors.white, buttonTextColor: AppColors.borderColor, ),
          ],
        ),
      ],
    );
  }
}