import 'package:flutter/material.dart';

import 'widgets/location_confirm_screen_body.dart';

class LocationConfirmScreen extends StatelessWidget {
  const LocationConfirmScreen({super.key});
  static const routeName = '/location-confirm-screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LocationConfirmScreenBody()),
    );
  }
}
