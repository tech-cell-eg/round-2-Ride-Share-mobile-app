import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/charge.dart';
import 'package:ride_share/Features/request_rent/widgets/from_to_location.dart';
import 'package:ride_share/Features/request_rent/widgets/payment_methods.dart';
import 'package:ride_share/Features/request_rent/widgets/vehicle_rating.dart';

class RequestRentConfirmBody extends StatelessWidget {
  const RequestRentConfirmBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FromToLocation(),
            VehicleRating(),
            Charge(),
            PaymentMethods(),
          ],
        ),
      ),
    );
  }
}
