import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';

import '../../core/constants/app_text_styles.dart';
import '../../core/constants/generated/images.dart';
import '../../core/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0).w,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                AppImages.welcomeScreen,
                width: 356.w,
                height: 276.h,
              ),
              const Text('Welcome', style: AppTextStyles.s24w500),
              Text('Have a better sharing experience',
                  style: AppTextStyles.s16w400
                      .copyWith(color: AppColors.greyColor)),
              const Spacer(),
              CustomButton(
                text: 'Create an account',
                onPressed: () {},
                height: 54.h,
                width: 340.w,
                color: AppColors.primaryColor,
                textStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.whiteColor),
                borderRadius: 8,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                text: 'Log in',
                onPressed: () {},
                height: 54.h,
                width: 340.w,
                color: AppColors.whiteColor,
                textStyle: AppTextStyles.s16w500
                    .copyWith(color: AppColors.primaryColor),
                borderRadius: 8.sp,
                borderColor: AppColors.primaryColor,
                borderWidth: 1.w,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
