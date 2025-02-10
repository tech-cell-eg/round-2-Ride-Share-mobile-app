import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../contact and payment/presentation/views/widgets/custom_divider.dart';
import 'info_line_row.dart';

class ReceptInfo extends StatelessWidget {
  const ReceptInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          title: AppStrings.vat,
          subTitle: '  (5%)',
          amountTitle: r'$20',
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: CustomDivider(
            color: Color(0xffE8E8E8),
          ),
        ),
        InfoLineRow(
          title: AppStrings.total,
          subTitle: '',
          amountTitle: r'$220',
        ),
      ],
    );
  }
}
