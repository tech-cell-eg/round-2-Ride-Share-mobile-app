import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/sections/section_heading.dart';
import 'package:ride_share/features/wallet/presentation/widgets/payment/payment_methods_list_view.dart';

class AddAmountScreenBody extends StatelessWidget {
  const AddAmountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter Amount',
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: InkWell(
              onTap: () {},
              child: Text(
                'Add payment Method',
                style: AppTextStyles.addPaymentMethodTextStyle,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          const SectionHeading(
            title: 'Select Payment Method',
            showActionButton: false,
          ),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          const PaymentMethodsListView(),
          const SizedBox(height: AppSizes.md),
          //CustomElevetedButton(title: 'Confirm'),
          //const SizedBox(height: AppSizes.md),
        ],
      ),
    );
  }
}
