import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/charge_component.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class Charge extends StatelessWidget {
  const Charge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text("Charge", style: AppStyles.medium16),
        SizedBox(height: 10),
        ChargeComponent(title: "Mustang/per hours", value: "200"),
        SizedBox(height: 10),
        ChargeComponent(title: "Vat (5%)", value: "20"),
      ],
    );
  }
}
