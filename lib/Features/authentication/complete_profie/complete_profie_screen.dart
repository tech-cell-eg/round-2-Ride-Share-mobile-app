import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';
import 'package:ride_share/features/authentication/sign_in/signin_screen.dart';

import '../../../core/constants/app_colors.dart';
import '../widgets/choose_image_widget.dart';

class CompleteProfieScreen extends StatelessWidget {
  CompleteProfieScreen({super.key});
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();

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
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
            child: Column(
              children: [
                const SizedBox(height: AppSizes.appBarSpace),
                const ChooseImageWidget(),
                const SizedBox(height: AppSizes.appBarSpace),
                CustomTextField(
                  controller: fullNameController,
                  hintText: 'Full Name',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                CustomTextField(
                  controller: fullNameController,
                  hintText: 'your mobile number',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                CustomTextField(
                  controller: streetController,
                  hintText: 'street',
                  hintStyle: AppTextStyles.s16w500
                      .copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwTextFields,
                ),
                CustomTextField(
                  controller: cityController,
                  hintText: 'City',
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
                CustomTextField(
                  controller: districtController,
                  hintText: 'District',
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
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Cancel',
                        onPressed: () {},
                        height: 54,
                        width: 174,
                        color: AppColors.whiteColor,
                        borderRadius: 8,
                        textStyle: AppTextStyles.s16w500,
                        borderColor: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: CustomButton(
                        text: 'save',
                        onPressed: () {
                          context.push(SigninScreen());
                        },
                        height: 54,
                        width: 174,
                        color: AppColors.primaryColor,
                        borderRadius: 8,
                        textStyle: AppTextStyles.s16w500.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
