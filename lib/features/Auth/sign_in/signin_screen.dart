import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../widgets/back_arrow_widget.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  TextEditingController emailOrPhonecontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ArrowBackWidget(),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Sign in with your email or phone number',
                  style: AppTextStyles.s24w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  controller: emailOrPhonecontroller,
                  hintText: 'Email or Phone Number',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Enter Your Password',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password?',
                      style:
                          AppTextStyles.s14w500.copyWith(color: AppColors.red,),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {},
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
                    Expanded(
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
                    Expanded(
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
                  image: Icon(Icons.email),
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
                  image: Icon(Icons.facebook),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
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
                  image: Icon(Icons.apple_outlined),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(height: 20.h),
                RichText(
                    text: TextSpan(
                  style: AppTextStyles.s12w500,
                  children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: AppTextStyles.s16w500
                          .copyWith(color: AppColors.darkGray),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: AppTextStyles.s16w500
                          .copyWith(color: AppColors.primaryColor),
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
