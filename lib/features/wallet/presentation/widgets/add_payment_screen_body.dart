import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';
import 'package:ride_share/features/wallet/presentation/widgets/buttons/confirm_button.dart';
import 'package:ride_share/features/wallet/presentation/widgets/payment/payment_methods_list_view.dart';

class AddPaymentScreenBody extends StatelessWidget {
  const AddPaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
                      child: SvgPicture.asset(AppIcons.arrowDown,
                          fit: BoxFit.scaleDown),
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
                      onPressed: () {
                        showSuccessDialog(context, 100);
                      },
                      child: FittedBox(child: Text('Save Payment Method')),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
              ],
            ),
          ),
          const PaymentMethodsListView(),
          SliverToBoxAdapter(child: const SizedBox(height: AppSizes.md)),
        ],
      ),
    );
  }

  void showSuccessDialog(BuildContext context, double amount) {
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
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.close, color: Colors.grey),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.withOpacity(0.2),
                    ),
                    child: Icon(Icons.check, color: Colors.green, size: 50),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Add Success",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Your money has been added successfully",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "\$$amount",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(double.infinity, 48),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Back Home",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
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
}
