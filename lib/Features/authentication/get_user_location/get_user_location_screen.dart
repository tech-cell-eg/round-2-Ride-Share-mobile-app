import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GetUserLocationScreen extends StatefulWidget {
  const GetUserLocationScreen({super.key});

  @override
  State<GetUserLocationScreen> createState() => _GetUserLocationScreenState();
}

class _GetUserLocationScreenState extends State<GetUserLocationScreen> {
  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    Position? position;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled == false) {}

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {}

      if (permission == LocationPermission.whileInUse) {
        position = await Geolocator.getCurrentPosition();
      }
    }
    return position;
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
