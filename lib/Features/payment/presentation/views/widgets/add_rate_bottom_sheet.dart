import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/shared/dialogs/custom_success_dialog.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/green_button.dart';

import '../../../../../core/utils/helpers/build_star_rating.dart';
import 'give_tips_row.dart';

class AddRateBottomSheet extends StatelessWidget {
  const AddRateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.close,
                  size: 24,
                ),
              ),
            ),
            const Spacer(),
            buildStarRating(3.5),
            const Spacer(),
            const Text(
              AppStrings.excellent,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF00AA6D),
              ),
            ),
            const Text(
              '${AppStrings.youRated} Sergio Ramasis 4 star',
              style: AppStyles.medium12,
            ),
            const Spacer(),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: AppStrings.writeYourText,
              ),
            ),
            const Spacer(),
            const Text(
              '${AppStrings.giveSomeTipsTo} Sergio Ramasis',
              style: AppStyles.medium16,
            ),
            const Spacer(),
            const GiveTipsRow(),
            const Spacer(),
            Text(
              AppStrings.enterOtherAmount,
              style: AppStyles.medium12.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            const Spacer(flex: 2),
            SizedBox(
              width: double.infinity,
              child: GreenButton(
                title: AppStrings.submit,
                onPressed: () {
                  context.pop();
                  customSuccessDialog(
                    context,
                    AppStrings.thankYou,
                    AppStrings.thankYouForFeedbackTip,
                    AppStrings.backHome,
                    () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
