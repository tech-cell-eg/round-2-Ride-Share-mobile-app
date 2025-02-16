import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/green_button.dart';
import '../../../../../core/constants/app_strings.dart';
import 'white_button.dart';

class DoubleButtonsRow extends StatelessWidget {
  const DoubleButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: WhiteButton()),
        const SizedBox(width: 19),
        Expanded(
          child: GreenButton(
            title: AppStrings.message,
            onPressed: () => context.pushNamed(Routes.chat.name),
          ),
        ),
      ],
    );
  }
}
