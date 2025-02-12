import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';

import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';
import 'package:ride_share/features/authentication/sign_in/signin_screen.dart';
import 'package:ride_share/features/authentication/verifyOtp/verify_otp_screen.dart';
import '../widgets/back_arrow_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0).w,
            child: Column(
              children: [
                const ArrowBackWidget(),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Sign up with your email or phone number',
                  style: AppTextStyles.s24w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Name',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  controller: genderController,
                  hintText: 'Email',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Gender',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 33.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const PrivaceAndTermsWidget(),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    context.push(const VerifyOtpScreen());
                  },
                  height: 54.h,
                  width: 340.w,
                  color: AppColors.primaryColor,
                  borderRadius: 8,
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
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
                      style: AppTextStyles.s16w500
                          .copyWith(color: AppColors.mediumGray),
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
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(
                  text: 'Sign up with Gmail',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.email),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  text: 'Sign up with FaceBook',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.facebook),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Sign up with Apple',
                  onPressed: () {},
                  height: 48.h,
                  width: 360.w,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: const Icon(Icons.apple_outlined),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(height: 20.h),
                RichText(
                    text: TextSpan(
                  style: AppTextStyles.s12w500,
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                      style: AppTextStyles.s16w500
                          .copyWith(color: AppColors.darkGray),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: AppTextStyles.s12w500
                          .copyWith(color: AppColors.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push(SigninScreen());
                        },
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PrivaceAndTermsWidget extends StatelessWidget {
  const PrivaceAndTermsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.checkCircle),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
            style: AppTextStyles.s12w500,
            children: [
              TextSpan(
                text: 'By signing up. you agree to the ',
                style:
                    AppTextStyles.s12w500.copyWith(color: AppColors.mediumGray),
              ),
              TextSpan(
                text: 'Terms of service ',
                style: AppTextStyles.s12w500
                    .copyWith(color: AppColors.primaryColor),
              ),
              TextSpan(
                text: 'and ',
                style:
                    AppTextStyles.s12w500.copyWith(color: AppColors.mediumGray),
              ),
              TextSpan(
                text: 'Privacy policy.',
                style: AppTextStyles.s12w500
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
