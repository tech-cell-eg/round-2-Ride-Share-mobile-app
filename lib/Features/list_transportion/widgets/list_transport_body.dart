import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/pages/list_available_vehicle_page.dart';
import 'package:ride_share/Features/list_transportion/widgets/transport_component.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class ListTransportBody extends StatelessWidget {
  const ListTransportBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Align(
            alignment: AlignmentDirectional.center,
            child: Text("Select your transport", style: AppStyles.semiBold24),
          ),
          const SizedBox(height: 50),
          Expanded(
            // Add Expanded here to prevent overflow
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 20, // Horizontal space between items
                mainAxisSpacing: 20, // Vertical space between items
              ),
              children: [
                TransportComponent(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ListAvailableVehiclePage(),
                        ));
                  },
                  image: AppImages.car,
                  text: "Cars",
                ),
                TransportComponent(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ListAvailableVehiclePage(),
                        ));
                  },
                  image: AppImages.bike,
                  text: "Bike",
                ),
                TransportComponent(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ListAvailableVehiclePage(),
                        ));
                  },
                  image: AppImages.imagesCycle,
                  text: "Cycle",
                ),
                TransportComponent(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ListAvailableVehiclePage(),
                        ));
                  },
                  image: AppImages.taxi,
                  text: "Taxi",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
