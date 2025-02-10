import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/Features/authentication/widgets/back_arrow_widget.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';

class SetNewPasswordScreen extends StatelessWidget {
  SetNewPasswordScreen({super.key});
  final TextEditingController newPasscontroller = TextEditingController();
  final TextEditingController confirmNewPasscontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0).w,
          child: Column(
            children: [
              const ArrowBackWidget(),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Set New password',
                style:
                    AppTextStyles.s24w500.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Set your new password',
                style:
                    AppTextStyles.s16w400.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                ),
                controller: newPasscontroller,
                hintText: 'Enter Your New Password',
                hintStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                borderSideColor: AppColors.mediumGray,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                ),
                controller: confirmNewPasscontroller,
                hintText: 'Confirm Password',
                hintStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                borderSideColor: AppColors.mediumGray,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Atleast 1 number or a special character',
                style: AppTextStyles.s14w500,
              ),
              const Spacer(),
              CustomButton(
                text: 'Save',
                onPressed: () {},
                height: 54.h,
                width: 340.w,
                color: AppColors.primaryColor,
                borderRadius: 8.w,
                textStyle: AppTextStyles.s16w500.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
