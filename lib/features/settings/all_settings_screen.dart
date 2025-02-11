import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/Features/authentication/widgets/back_arrow_widget.dart';
import 'all_setting_widget.dart';

class AllSettingsScreen extends StatelessWidget {
  const AllSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16).w,
            child: Column(
              children: [
                const ArrowBackWidget(),
                SizedBox(
                  height: 30.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 30.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 30.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 30.h,
                ),
                const SettingItemWidget(text: 'change password'),
                SizedBox(
                  height: 30.h,
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
