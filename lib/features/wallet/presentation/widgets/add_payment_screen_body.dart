import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';
import 'package:ride_share/features/wallet/presentation/widgets/payment/payment_methods_list_view.dart';

class AddPaymentScreenBody extends StatelessWidget {
  const AddPaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          TextField(
            decoration: InputDecoration(
              labelText: 'Select Payment Method',
              suffixIcon: InkWell(
                onTap: () {},
                borderRadius:
                    BorderRadius.circular(AppSizes.outlinedButtonRadius),
                child:
                    SvgPicture.asset(AppIcons.arrowDown, fit: BoxFit.scaleDown),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwTextFields),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Account Number',
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26 - 15),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: FittedBox(child: Text('Save Payment Method')),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          const PaymentMethodsListView(),
        ],
      ),
    );
  }
}
