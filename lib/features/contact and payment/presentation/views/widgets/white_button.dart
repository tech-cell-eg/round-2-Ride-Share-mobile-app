import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_text_styles.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(170, 54),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.primaryColor),
        ),
      ),
      child: Text(
        'Call',
        style: AppTextStyles.styleBlack16Medium.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
