import 'package:flutter/material.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/features/wallet/presentation/widgets/add_amount_screen_body.dart';

import '../widgets/buttons/confirm_button.dart';

class AddAmountScreen extends StatelessWidget {
  const AddAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: AddAmountScreenBody(),
      bottomNavigationBar: ConfirmButton(),
    );
  }

  CustomAppBar _buildAppBar() {
    return const CustomAppBar(
      title: Text('Amount'),
      leadingWidth: 85,
      leading: ArrowBackIcon(),
    );
  }
}
