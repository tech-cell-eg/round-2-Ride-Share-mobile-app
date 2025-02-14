import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/home/presentation/widgets/service_panel/destination_search.dart';
import 'package:ride_share/features/home/presentation/widgets/service_panel/transport_mode_selector.dart';

class ServiceOptions extends StatelessWidget {
  const ServiceOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      margin: const EdgeInsets.only(bottom: 80),
      decoration: _buildDecoration(),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --destination search--
          DestinationSearch(),
          // --space--
          SizedBox(height: AppSizes.serviseOptionsSpace),
          // --transport and delivery selector--
          TransportModeSelector(),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: const Color(0xFFB9E5D1),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.primaryWalletBorderColor),
    );
  }
}
