import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/utils/helpers/spacing.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages(
      {super.key, required this.mainText, required this.image});
  final String mainText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        verticalSpace(44),
        Text(mainText, style: AppTextStyles.font24Grey41Medium),
        verticalSpace(12),
        Text( 
          AppStrings.onBoardingDescription,
          style: AppTextStyles.font14GreyA0Medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
