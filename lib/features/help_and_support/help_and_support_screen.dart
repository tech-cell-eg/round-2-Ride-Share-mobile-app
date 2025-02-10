import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(AppStrings.helpAndSupport),
        leadingWidth: 85,
        leading: ArrowBackIcon(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.appBarSpace),
              Text(
                AppStrings.helpAndSupport,
                style: AppTextStyles.helpAndSupportTextStyle,
              ),
              const SizedBox(height: 20),
              Text(
                AppStrings.helpAndSupportBody,
                style: AppTextStyles.helpAndSupportSubTextStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: AppSizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
