import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'all_setting_widget.dart';

class AllSettingsScreen extends StatelessWidget {
  const AllSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Settings'),
        leadingWidth: 85,
        leading: ArrowBackIcon(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
            child: Column(
              children: [
                SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                SettingItemWidget(text: 'change password'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
