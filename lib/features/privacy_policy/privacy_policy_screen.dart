import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Privacy Policy'),
        leadingWidth: 85,
        leading: const ArrowBackIcon(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.appBarSpace),
              Text(
                'Privacy Policy for Ride share',
                style: AppTextStyles.helpAndSupportTextStyle,
              ),
              const SizedBox(height: 20),
              Text(
                'At Rideshare, accessible from rideshare.com, one of our main priorities is the privacy of our visitors.  This  Privacy  Policy  document contains  types   of    information  that  is collected and recorded by rideshare and  how we use it.\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\nThis Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.',
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
