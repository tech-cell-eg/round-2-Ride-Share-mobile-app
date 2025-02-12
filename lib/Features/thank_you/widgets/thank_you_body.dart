import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';

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
            Image.asset(AppImages.imagesThankYou),
            const SizedBox(height: 20),
            const Text("Thank you", style: AppStyles.medium20),
            const SizedBox(height: 8),
            const Text("Your booking has been placed sent to Md. Sharif Ahmed",
                textAlign: TextAlign.center, style: AppStyles.medium12B),
          ],
        ),
      ),
    );
  }
}
