import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_available_vehicle_title_page.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_of_all_vehicle_exist_same_type.dart';

class ListAvailableVehicleSameTypeBody extends StatelessWidget {
  const ListAvailableVehicleSameTypeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ListAvailableVehicleTitlePage()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverFillRemaining(child: ListOfAllVehicleExistSameType()),
          ],
        ));
  }
}
