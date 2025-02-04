import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_images.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';

import '../widgets/back_arrow_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ArrowBackWidget(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Sign up with your email or phone number',
                  style: AppTextStyles.s24w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Name',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: genderController,
                  hintText: 'Email',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Gender',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 33,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PrivaceAndTermsWidget(),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {},
                  height: 54,
                  width: 340,
                  color: AppColors.primaryColor,
                  borderRadius: 8,
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                CustomButton(
                  text: 'Sign up with Gmail',
                  onPressed: () {},
                  height: 48,
                  width: 360,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: Icon(Icons.email),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Sign up with FaceBook',
                  onPressed: () {},
                  height: 48,
                  width: 360,
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
                  height: 48,
                  width: 360,
                  color: AppColors.whiteColor,
                  borderRadius: 8,
                  borderColor: AppColors.lightGray,
                  image: Icon(Icons.apple_outlined),
                  textStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.blackColor),
                ),
               SizedBox(height:20),
                RichText(
              text: TextSpan(
            style: AppTextStyles.s12w500,
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style:
                    AppTextStyles.s16w500.copyWith(color: AppColors.darkGray),
              ),
              TextSpan(
                text: 'Sign in',
                style: AppTextStyles.s12w500
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
          width: 5,
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
