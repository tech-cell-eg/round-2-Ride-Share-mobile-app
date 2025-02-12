import 'package:flutter/material.dart';

class ChargeComponent extends StatelessWidget {
  const ChargeComponent({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
