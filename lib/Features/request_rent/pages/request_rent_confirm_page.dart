import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/request_rent_confirm_body.dart';
import 'package:ride_share/Features/thank_you/thank_you_page.dart';
import 'package:ride_share/core/widgets/custom_fill_button.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class RequestRentConfirmPage extends StatelessWidget {
  const RequestRentConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProjectAppbar(title: "Request for rent"),
      body: const RequestRentConfirmBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
        child: CustomFillButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThankYouPage(),
                  ));
            },
            title: "Confirm Ride"),
      ),
    );
  }
}
