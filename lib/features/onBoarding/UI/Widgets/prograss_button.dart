import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

class PrograssButton extends StatelessWidget {
  const PrograssButton({super.key, required this.prograss,required this.onPressed,});
  final double prograss;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return DashedCircularProgressBar.aspectRatio(
      aspectRatio: 4.5,
      progress: prograss,
      maxProgress: 3,
      corners: StrokeCap.butt,
      foregroundColor: AppColors.mainColor,
      backgroundColor: AppColors.lightGreen,
      foregroundStrokeWidth: 4,
      backgroundStrokeWidth: 4,
      animation: true,
      child: Center(
        child: Container(
          height: 74,
          width: 74,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.mainColor,
          ),
          child: prograss < 3
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: AppColors.gray5A,
                  ),
                  onPressed: onPressed,
                )
              : GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.login);
                  },
                  child: Center(
                      child: Text('Go',
                          style: AppTextStyles.font16Grey41Regular))),
        ),
      ),
    );
  }
}
