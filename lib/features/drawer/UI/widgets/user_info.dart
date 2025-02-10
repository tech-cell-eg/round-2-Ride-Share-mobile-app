import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: AppColors.mainColor)),
            child: const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(AppImages.man),
            ),
          ),
          const SizedBox(height: 15),
          Text('Nata Samaon', style: AppTextStyles.font20Grey41Medium),
          Text('nata@gmail.com', style: AppTextStyles.font12Grey41Medium),
        ],
      ),
    );
  }
}
