import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.mediumGray, width: 1),
        ),
        hintText: "date",
        hintStyle: AppStyles.medium16gr,
      ),
    );
  }
}
