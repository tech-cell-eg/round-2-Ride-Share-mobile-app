import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/images.dart';
import 'package:ride_share/core/widgets/green_box.dart';

import 'driver_rate_box.dart';
import 'info_line_row.dart';

class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          DriverRateBox(),
          SizedBox(height: 30),
          Text(
            AppStrings.charge,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          InfoLineRow(
            title: 'Mustang/',
            subTitle: 'per hours',
            amountTitle: r'$200',
          ),
          SizedBox(height: 10),
          InfoLineRow(
            title: 'Vat',
            subTitle: '  (5%)',
            amountTitle: r'$20',
          ),
          InfoLineRow(
            title: 'Total',
            subTitle: '',
            amountTitle: r'$220',
          ),
        ],
      ),
    );
  }
}
