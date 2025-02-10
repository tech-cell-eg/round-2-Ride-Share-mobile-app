import 'package:location/location.dart';

import 'exceptions.dart';

class LocationService {
  final Location _location;

  LocationService({required Location location}) : _location = location;

  Future<void> _checkAndRequestLocationService() async {
    bool isServiceEnabled = await _location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await _location.requestService();
      if (!isServiceEnabled) {
        throw LocationServiceException(
          errorMessage: "Location service is not enabled",
        );
      }
    }
  }

  Future<void> _checkAndRequestLocationPermission() async {
    PermissionStatus permissionStatus = await _location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      throw LocationPermissionException(
          errorMessage: "Permission denied forever");
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await _location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        throw LocationPermissionException(errorMessage: "Permission denied");
      }
    }
  }

  void changeSettings({
    required double distanceFilter,
    required int interval,
  }) {
    _location.changeSettings(
        distanceFilter: distanceFilter, interval: interval);
  }

  void getRealTimeLocationData(
      {required void Function(LocationData)? onData}) async {
    await _checkAndRequestLocationService();
    await _checkAndRequestLocationPermission();
    _location.onLocationChanged.listen(onData);
  }

  Future<LocationData> getLocation() async {
    await _checkAndRequestLocationService();
    await _checkAndRequestLocationPermission();
    return _location.getLocation();
  }
}
