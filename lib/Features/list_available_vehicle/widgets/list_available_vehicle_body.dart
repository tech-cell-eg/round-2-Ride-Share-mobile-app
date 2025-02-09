import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_available_vehicle_title_page.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_of_all_vehicle_exist.dart';

class ListAvailableVehicleBody extends StatelessWidget {
  const ListAvailableVehicleBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ListAvailableVehicleTitlePage()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverFillRemaining(child: ListOfAllVehicleExist()),
          ],
        ));
  }
}
