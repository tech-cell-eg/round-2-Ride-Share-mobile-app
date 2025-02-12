import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/locatoin_component.dart';

class FromToLocation extends StatelessWidget {
  const FromToLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LocationComponent(
          iconColor: Colors.red,
          title: "Current location",
          subTitle: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
        ),
        LocationComponent(
          iconColor: Colors.green,
          title: "Office",
          subTitle: "1901 Thornridge Cir. Shiloh, Hawaii 81063",
          destance: "1.1km",
        )
      ],
    );
  }
}
