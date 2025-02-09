import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_decorations.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class MethodComponent extends StatelessWidget {
  const MethodComponent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      width: double.infinity,
      decoration: AppDecorations.dafaultContainer,
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppStyles.medium16),
              Text(subTitle, style: AppStyles.medium14)
            ],
          )
        ],
      ),
    );
  }
}
