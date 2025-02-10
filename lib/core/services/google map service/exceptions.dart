class LocationServiceException implements Exception {
  final String errorMessage;

  LocationServiceException({required this.errorMessage});
}

class LocationPermissionException implements Exception {
  final String errorMessage;

  LocationPermissionException({required this.errorMessage});
}
