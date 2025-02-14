import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/home/presentation/widgets/service_panel/rental_service.dart';
import 'package:ride_share/features/home/presentation/widgets/service_panel/service_options.dart';

class ServicePanel extends StatelessWidget {
  const ServicePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // --rental service--
            const RentalService(),

            const SizedBox(height: 15),
            // --service options---
            const ServiceOptions(),
            // --for bottom padding when keyboard is open--
            AnimatedPadding(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).viewInsets.bottom) / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
