import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/mapkit_factory.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

import 'custom_map.dart';

class LocationConfirmScreenBody extends StatefulWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  State<LocationConfirmScreenBody> createState() =>
      _LocationConfirmScreenBodyState();
}

class _LocationConfirmScreenBodyState extends State<LocationConfirmScreenBody> {
  @override
  Widget build(BuildContext context) {
    return CustomMap();
  }
}
