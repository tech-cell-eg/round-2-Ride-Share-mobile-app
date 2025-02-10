import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/features/home/UI/widgets/transport_delivary_item.dart';

class TransportDelivaryWidget extends StatefulWidget {
  const TransportDelivaryWidget({super.key});

  @override
  State<TransportDelivaryWidget> createState() =>
      _TransportDelivaryWidgetState();
}

class _TransportDelivaryWidgetState extends State<TransportDelivaryWidget> {
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.84,
      height: 46,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        color: AppColors.lighterGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) {
          return Row(
            children: [
              TransportDelivaryItem(
                title: AppStrings.transport,
                isSelected: value == 0,
                onTap: () {
                  setState(() {
                    selectedIndex.value = 0;
                  });
                },
              ),
              TransportDelivaryItem(
                title: AppStrings.delivery,
                isSelected: value == 1,
                onTap: () {
                  selectedIndex.value = 1;
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
