import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/features/home/UI/widgets/custom_search_field.dart';
import 'package:ride_share/features/home/UI/widgets/transport_delivary_widget.dart';

class SearchTransportDelivaryBox extends StatelessWidget {
  const SearchTransportDelivaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 141,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(height: 12),
            CustomSearchField(),
            SizedBox(height: 10),
            TransportDelivaryWidget(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
