import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';

import '../widgets/back_arrow_widget.dart';
import '../widgets/verify_otp.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ArrowBackWidget(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Phone verification',
                style:
                    AppTextStyles.s24w500.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Enter your OTP code',
                style:
                    AppTextStyles.s16w400.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(
                height: 30,
              ),
              // هنا هنعمل ال OTP
              OtpInputField(
                length: 5,
                fieldWidth: 50,
                fieldHeight: 55,
                onCompleted: (code) {
                  print("تم إدخال الكود: $code");
                },
              ),

              RichText(
                  text: TextSpan(
                style: AppTextStyles.s12w500,
                children: [
                  TextSpan(
                    text: 'Didn’t receive code? ',
                    style: AppTextStyles.s16w500
                        .copyWith(color: AppColors.darkGray),
                  ),
                  TextSpan(
                    text: 'Resend again',
                    style: AppTextStyles.s16w500
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              )),
              Spacer(),
              CustomButton(
                text: 'Verify',
                onPressed: () {},
                height: 54,
                width: 340,
                color: AppColors.primaryColor,
                borderRadius: 8,
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
