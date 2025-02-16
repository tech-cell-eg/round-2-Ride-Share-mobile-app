enum Routes {
  onboarding,
  navigation,
  signUp,
  notification,
  history,
  complain,
  locationConfirm,
  calling,
  talk,
  chat,
  payment
}

extension RoutesExtension on Routes {
  String get name => toString().split('.').last;
}

// String example = "Routes.onboarding";
//List<String> parts = example.split('.'); // ["Routes", "onboarding"]
//String lastPart = parts.last; // "onboarding"