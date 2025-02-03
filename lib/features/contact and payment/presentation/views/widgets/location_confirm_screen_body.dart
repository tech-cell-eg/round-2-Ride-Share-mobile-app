import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/mapkit_factory.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

import 'custom_map.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomMap(),
        Positioned(
          top: 60,
          right: 15,
          left: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.draw_outlined,
                size: 30,
              ),
              InkWell(
                //Background Color/BgLight
                onTap: () {},
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
