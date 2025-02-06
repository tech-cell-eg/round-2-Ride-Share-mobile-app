import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../../core/services/google map service/exceptions.dart';
import '../../../../../core/services/google map service/location_service.dart';
import '../../../../../core/services/google map service/map_services.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;
  Set<Polyline> polyLines = {};
  Set<Marker> markers = {};
  late GoogleMapController googleMapController;
  late MapServices mapServices;

  @override
  void initState() {
    super.initState();
    initCameraPosition();
    mapServices = MapServices(
      locationService: LocationService(
        location: Location(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    googleMapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      polylines: polyLines,
      zoomControlsEnabled: false,
      markers: markers,
      onMapCreated: (controller) {
        googleMapController = controller;
        // updateCurrentLocation();
      },
    );
  }

  void initCameraPosition() {
    initialCameraPosition = const CameraPosition(
      target: LatLng(29.99552098735423, 31.205921201848618),
      zoom: 11,
    );
  }

  void updateCurrentLocation() async {
    try {
      mapServices.updateCurrentLocation(
        googleMapController: googleMapController,
        markers: markers,
        onUpdate: () {
          setState(() {});
        },
      );
    } on LocationServiceException catch (e) {
      // TODO
    } on LocationPermissionException catch (e) {
      // TODO
    } catch (e) {
      // TODO
    }
  }
}
