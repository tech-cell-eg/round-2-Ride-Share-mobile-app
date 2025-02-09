import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/request_rent_confirm_body.dart';
import 'package:ride_share/Features/thank_you/widgets/thank_you_body.dart';
import 'package:ride_share/core/widgets/custom_fill_button.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProjectAppbar(),
      body: const ThankYouBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
        child: CustomFillButton(onTap: () {}, title: "Confirm Ride"),
      ),
    );
  }
}
