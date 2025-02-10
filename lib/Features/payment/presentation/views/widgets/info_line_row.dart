import 'package:flutter/material.dart';

class InfoLineRow extends StatelessWidget {
  const InfoLineRow({
    super.key,
    required this.title,
    required this.subTitle,
    required this.amountTitle,
  });
  final String title;
  final String subTitle;
  final String amountTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        const Spacer(),
        Text(
          amountTitle,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
