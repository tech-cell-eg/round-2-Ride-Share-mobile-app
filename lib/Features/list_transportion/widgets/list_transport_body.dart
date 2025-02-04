import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_car/list_available_car_page.dart';
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
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30),
          Align(
            alignment: AlignmentDirectional.center,
            child: Text("Select your transport", style: AppStyles.semiBold16),
          ),
          SizedBox(height: 50),
          Expanded(
            // Add Expanded here to prevent overflow
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                          builder: (context) => AvailableCarPage(),
                        ));
                  },
                  image: AppImages.imagesCar,
                  text: "Cars",
                ),
                TransportComponent(
                  onTap: () {},
                  image: AppImages.imagesBike,
                  text: "Bike",
                ),
                TransportComponent(
                  onTap: () {},
                  image: AppImages.imagesCycle,
                  text: "Cycle",
                ),
                TransportComponent(
                  onTap: () {},
                  image: AppImages.imagesTaxi,
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
