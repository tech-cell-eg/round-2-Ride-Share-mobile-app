import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class CustomTitlePage extends StatelessWidget {
  const CustomTitlePage(
      {super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.semiBold24,
        ),
        const SizedBox(height: 6),
        Text(
          subTitle,
          style: AppStyles.medium14,
        )
      ],
    );
  }
}
