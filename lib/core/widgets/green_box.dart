import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class GreenBox extends StatelessWidget {
  const GreenBox({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 17,
      ),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withValues(alpha: 0.1),
        border: Border.all(color: AppColors.mainColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: child,
    );
  }
}
