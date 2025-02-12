import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/shared/dialogs/custom_success_dialog.dart';

class ReferralScreenBody extends StatelessWidget {
  const ReferralScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSizes.appBarSpace),
          const Text(
            AppStrings.referralTitle,
            style: AppTextStyles.referralTitleTextStyle,
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'RkMFucd',
              suffixIcon: SvgPicture.asset(
                MyIcons.copyIcon,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwWalletCards + 2),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                customSuccessDialog(
                  context,
                  AppStrings.sendSuccessful,
                  AppStrings.sendRefferalSuccessful,
                  AppStrings.back,
                  () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                );
              },
              child: const Text('Invite'),
            ),
          ),
        ],
      ),
    );
  }
}
