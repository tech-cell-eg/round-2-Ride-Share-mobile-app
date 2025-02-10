import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/constants/app_colors.dart';

class OtpInputField extends StatelessWidget {
  final int length;
  final ValueChanged<String> onCompleted;
   
  final Color activeFillColor;
  final double fieldWidth;
  final double fieldHeight;
  final bool obscureText;

  const OtpInputField({
    super.key,
    required this.length,
    required this.onCompleted,
    
    this.activeFillColor = Colors.white,
    this.fieldWidth = 40,
    this.fieldHeight = 50,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
       cursorColor: AppColors.greyColor,
      length: length, // عدد الخانات الديناميكي
      obscureText: obscureText, // هل يكون مخفي (مثل كلمة المرور)
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: fieldHeight, // الطول الديناميكي للخانة
        fieldWidth: fieldWidth, // العرض الديناميكي للخانة
        activeFillColor: activeFillColor, // لون الخلفية عند الكتابة
        
        activeColor:  AppColors.whiteColor,
        disabledColor:  AppColors.whiteColor,
        inactiveColor: AppColors.whiteColor,
        selectedFillColor: AppColors.whiteColor,
        selectedColor:  AppColors.greyColor,
        inactiveFillColor: Colors.grey,
      
      ),
      animationDuration: const Duration(milliseconds: 300),
       enableActiveFill: true,
      onCompleted: onCompleted, // عند الانتهاء من الإدخال
      appContext: context,
    );
  }
}
