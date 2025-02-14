import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 81.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SvgPicture.asset(AppIcons.iconsSuccessIcon),
            ),
            const SizedBox(height: 20),
            const Text("Thank you", style: AppStyles.medium20),
            const SizedBox(height: 8),
            const Text(
              "Your booking has been placed sent to Md. Sharif Ahmed",
              textAlign: TextAlign.center,
              style: AppStyles.medium12B,
            ),
          ],
        ),
      ),
    );
  }
}
