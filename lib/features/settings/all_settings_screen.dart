import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'all_setting_widget.dart';

class AllSettingsScreen extends StatelessWidget {
  const AllSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Settings'),
        leadingWidth: 85,
        leading: ArrowBackIcon(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 16.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 16.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 16.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 16.h,
                ),
                const SettingItemWidget(text: 'change password'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
