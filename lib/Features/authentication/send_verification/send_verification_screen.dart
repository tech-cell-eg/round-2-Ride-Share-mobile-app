import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/Features/authentication/widgets/back_arrow_widget.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/authentication/verifyOtp/verify_otp_screen.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SendVerificationScreen extends StatelessWidget {
  SendVerificationScreen({super.key});
  final TextEditingController emailOrPhonecontroller = TextEditingController();
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
                height: 30.h,
              ),
              Text(
                'Verifivation email or phone number',
                style:
                    AppTextStyles.s24w500.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                controller: emailOrPhonecontroller,
                hintText: 'Email or Phone Number',
                hintStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                borderSideColor: AppColors.mediumGray,
              ),
              const Spacer(),
              CustomButton(
                text: 'Send OTP',
                onPressed: () {
                  context.push(const VerifyOtpScreen());
                },
                height: 54.h,
                width: 340.w,
                color: AppColors.primaryColor,
                borderRadius: 8,
                textStyle:
                    AppTextStyles.s16w500.copyWith(color: AppColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
