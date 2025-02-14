import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';
import 'package:ride_share/features/list_transportion/list_transportion_page.dart';

class RentalService extends StatelessWidget {
  const RentalService({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ElevatedButton(
            onPressed: () {
              context.push(const ListTransportionPage());
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 16.5,
              ),
            ),
            child: const Text('Rental'),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push(const LocationConfirmScreen());
          },
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(Iconsax.location, color: Color(0xFF5A5A5A)),
          ),
        ),
      ],
    );
  }
}