import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/generated/images.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/generated/images.dart';

class ChooseImageWidget extends StatelessWidget {
  const ChooseImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage(AppImages.checkCircle),
          radius: 55.sp,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 20.sp,
            child: const Icon(
              Icons.camera_alt_outlined,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
