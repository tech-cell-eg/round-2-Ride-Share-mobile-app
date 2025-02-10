import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text(AppStrings.aboutUs),
        leadingWidth: 85,
        leading: ArrowBackIcon(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 14),
          child: Column(
            children: [
              SizedBox(height: AppSizes.appBarSpace),
              Text(
                AppStrings.aboutUsDescription,
                style: AppTextStyles.aboutUsTextStyle,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: AppSizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
