import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  @override
  initState() {
    super.initState();
    _getCurrentLocation();
  }

  final Set<Marker> _markers = {};
  late LatLng _currentLocation;

  Future<void> _getCurrentLocation() async {
    Location location = Location();

    // Request permission to access location
    PermissionStatus permissionStatus = await location.hasPermission();

    if (permissionStatus == PermissionStatus.granted) {
      LocationData locationData = await location.getLocation();
      setState(() {
        _currentLocation =
            LatLng(locationData.latitude!, locationData.longitude!);
      });
    } else {
      // Handle case when permission is denied
      print('Location permission denied');
    }
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(29.97981158837924, 31.134218186032324),
        zoom: 6,
      ),
      mapType: MapType.hybrid,
      markers: _markers,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
