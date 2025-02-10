import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/features/wallet/presentation/widgets/add_payment_screen_body.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: AddPaymentScreenBody(),
    );
  }

  CustomAppBar _buildAppBar() {
    return const CustomAppBar(
      title: Text(AppStrings.amount),
      leadingWidth: 85,
      leading: ArrowBackIcon(),
    );
  }
}
