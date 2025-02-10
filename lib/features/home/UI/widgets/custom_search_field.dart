import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextField(
        decoration: InputDecoration(
            fillColor: AppColors.lighterGreen,
            filled: true,
            hintText: AppStrings.whereWouldYouGo,
            hintStyle: AppTextStyles.font16GreyA0Medium,
            prefixIcon: const Icon(Icons.search, color: AppColors.gray41),
            suffixIcon:
                const Icon(Icons.favorite_border, color: AppColors.grayA0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.mainColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.mainColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.mainColor))),
      ),
    );
  }
}
