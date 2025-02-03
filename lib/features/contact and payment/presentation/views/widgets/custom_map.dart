import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/mapkit_factory.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({
    super.key,
  });

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  MapWindow? _mapWindow;

  @override
  void initState() {
    super.initState();
    mapkit.onStart();
  }

  @override
  Widget build(BuildContext context) {
    return YandexMap(
      onMapCreated: (mapWindow) {
        _mapWindow = mapWindow;
        setState(() {});
        _mapWindow!.map.move(
          CameraPosition(
            Point(latitude: 29.97728376936489, longitude: 31.132415741704243),
            zoom: 11.0,
            azimuth: 150.0,
            tilt: 30.0,
          ),
        );
      },
    );
  }
}
