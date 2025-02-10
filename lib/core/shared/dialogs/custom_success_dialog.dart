import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';
import 'package:ride_share/core/constants/generated/app_images.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

void customSuccessDialog(
  BuildContext context,
  String title,
  String subTitle,
  String buttonTitle,
  Function()? buttonOnPressed, {
  double? amount,
  bool showAmount = false,
  bool showButtonWidget = false,
  bool showDivider = false,
  String? buttomWidgetTitle,
  String? bottomWidgetSubTitle,
}) {
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
                  LayoutBuilder(
                    builder: (context, constraints) => SizedBox(
                      width: constraints.maxWidth * 0.8,
                      child: Column(
                        children: [
                          Text(
                            title,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.successDialogTitleStyle,
                          ),
                          const SizedBox(height: 7),
                          Text(
                            subTitle,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.successDialogSubTitleStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (showAmount)
                    Column(
                      children: [
                        const SizedBox(height: 24),
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
                  const SizedBox(height: 10),
                  if (showDivider)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        24,
                        (index) => Container(
                          width: 10,
                          height: 1.6,
                          color: AppColors.dividerColor,
                        ),
                      ),
                    ),
                  if (showButtonWidget)
                    LayoutBuilder(
                      builder: (context, constraints) => SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              buttomWidgetTitle ?? '',
                              style: AppTextStyles.bottomDialogTitleTextStyle,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              bottomWidgetSubTitle ?? '',
                              textAlign: TextAlign.center,
                              style:
                                  AppTextStyles.bottomDialogSubTitleTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.successDialogPadding,
                      vertical: 32,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: buttonOnPressed,
                        child: FittedBox(child: Text(buttonTitle)),
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
