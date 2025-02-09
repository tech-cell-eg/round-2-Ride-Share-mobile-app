import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class TransportComponent extends StatelessWidget {
  const TransportComponent({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });
  final String image, text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.containerBorder),
          borderRadius: BorderRadius.all(
              Radius.circular(AppConstants.containerBorderRediuse)),
          color: AppColors.containerBackgraond,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(image),
            SizedBox(height: 10),
            Text(text, style: AppStyles.medium16),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
