import 'package:flutter/material.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/features/complain/presentation/widgets/complain_screen_body.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ComplainScreenBody(),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      title: const Text('Complain'),
      leadingWidth: 85,
      leading: const ArrowBackIcon(),
    );
  }
}
