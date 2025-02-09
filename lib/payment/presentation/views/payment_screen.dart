import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/default_app_bar.dart';

import 'widgets/payment_screen_body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
  static const String routeName = 'payment_screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: 'Payment'),
      body: PaymentScreenBody(),
    );
  }
}
