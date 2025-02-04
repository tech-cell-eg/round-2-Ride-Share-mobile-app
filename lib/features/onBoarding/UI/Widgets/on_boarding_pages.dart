import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/utils/helpers/spacing.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key, required this.mainText,required this.image});
  final String mainText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(50),
        Text(mainText, style: AppTextStyles.font24Grey41Medium),
        verticalSpace(16),
        Text(
          ' Sell houses easily with the help of \nListenoryx and to make this line big \nI am writing more.',
          style: AppTextStyles.font14GreyA0Medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
