import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/shared/sections/section_heading.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/wallet/presentation/screens/add_payment_screen.dart';
import 'package:ride_share/features/wallet/presentation/widgets/buttons/confirm_button.dart';
import 'package:ride_share/features/wallet/presentation/widgets/payment/payment_methods_list_view.dart';

class AddAmountScreenBody extends StatelessWidget {
  const AddAmountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: AppStrings.enterAmount,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: InkWell(
                          onTap: () {
                            context.push(const AddPaymentScreen());
                          },
                          child: const Text(
                            AppStrings.addPaymentMethod,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.addPaymentMethodTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
                      const SectionHeading(
                        title: AppStrings.selectPaymentMethod,
                        showActionButton: false,
                      ),
                      const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
                      // const PaymentMethodsListView(),
                      // const ConfirmButton(),
                    ],
                  ),
                ),
                const PaymentMethodsListView(),
              ],
            ),
          ),
          const ConfirmButton(),
        ],
      ),
    );
  }
}
