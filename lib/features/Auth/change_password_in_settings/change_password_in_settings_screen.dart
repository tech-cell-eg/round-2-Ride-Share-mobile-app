import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';
import 'package:ride_share/features/Auth/widgets/back_arrow_widget.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});
  TextEditingController newPasscontroller = TextEditingController();
  TextEditingController confirmNewPasscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0).w,
          child: Column(
            children: [
              Row(
                children: [
                  ArrowBackWidget(),
                  Padding(
                    padding: const EdgeInsets.only(left:30).w,
                    child: Text(
                                    'Change password',
                                    style:
                      AppTextStyles.s18w500.copyWith(color: AppColors.blackColor),
                                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              
              
              
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                ),
                controller: newPasscontroller,
                hintText: 'old Password',
                hintStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                borderSideColor: AppColors.mediumGray,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                ),
                controller: confirmNewPasscontroller,
                hintText: 'New Password',
                hintStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                borderSideColor: AppColors.mediumGray,
              ),
               SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                suffixIcon: Icon(
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
