import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';
import 'package:ride_share/core/constants/generated/app_images.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

void showSuccessDialog(BuildContext context, {required double amount}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "",
    transitionDuration: Duration(milliseconds: 400),
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppSizes.successDialogRadius),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 1),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Image.asset(
                        AppImages.closeIcon,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Flexible(
                    child: SvgPicture.asset(AppIcons.successIcon),
                  ),
                  const SizedBox(height: 23),
                  Column(
                    children: [
                      Text(
                        'Add Success',
                        maxLines: 1,
                        style: AppTextStyles.successDialogTitleStyle,
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'Your money has been add successfully ',
                        maxLines: 1,
                        style: AppTextStyles.successDialogSubTitleStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Column(
                    children: [
                      Text(
                        'Amount',
                        style: AppTextStyles.successDialogAmountStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$$amount',
                        style: AppTextStyles.successDialogMoneyStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.successDialogPadding,
                      vertical: 32,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: FittedBox(child: Text('Back Home')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
        child: child,
      );
    },
  );
}
