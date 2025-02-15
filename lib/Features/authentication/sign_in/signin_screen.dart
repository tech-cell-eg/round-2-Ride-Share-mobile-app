import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/authentication/send_verification/send_verification_screen.dart';
import 'package:ride_share/features/navigation/persentation/screens/navigation_screen.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final TextEditingController emailOrPhonecontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        leading: ArrowBackIcon(),
        leadingWidth: 85,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.screenPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.appBarSpace),
                Text(
                  'Sign in with your email or phone number',
                  style: AppTextStyles.s24w500.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(height: AppSizes.appBarSpace + 10),
                CustomTextField(
                  controller: emailOrPhonecontroller,
                  hintText: 'Email or Phone Number',
                  hintStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.lightGray,
                  ),
                  borderSideColor: AppColors.mediumGray,
                ),
                const SizedBox(height: AppSizes.spaceBtwTextFields),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Enter Your Password',
                  hintStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.lightGray,
                  ),
                  borderSideColor: AppColors.mediumGray,
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.push(SendVerificationScreen());
                      },
                      child: Text(
                        'Forget password?',
                        style: AppTextStyles.s14w500.copyWith(
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwTextFields),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    context.push(const NavigationScreen());
                  },
                  height: 54.h,
                  width: 340.w,
                  color: AppColors.primaryColor,
                  borderRadius: 8,
                  textStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: AppColors.mediumGray,
                        thickness: 2,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      'or ',
                      style: AppTextStyles.s16w500.copyWith(
                        color: AppColors.mediumGray,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: AppColors.mediumGray,
                        thickness: 2,
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomButton(
                  text: 'Sign up with Gmail',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.email),
                  textStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  text: 'Sign up with FaceBook',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.facebook),
                  textStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Sign up with Apple',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.apple_outlined),
                  textStyle: AppTextStyles.s16w500.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 20.h),
                RichText(
                  text: TextSpan(
                    style: AppTextStyles.s12w500,
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: AppTextStyles.s16w500.copyWith(
                          color: AppColors.darkGray,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: AppTextStyles.s16w500.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
