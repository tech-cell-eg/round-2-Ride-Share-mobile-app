import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/app.dart';
import 'package:yandex_maps_mapkit_lite/init.dart' as init;

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init.initMapkit(apiKey: '9b214a7b-b858-431c-b059-a66412553859');
  runApp(const MyApp());
=======
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),),
);
>>>>>>> 2e8c127c7799ad07d6684db71c7729a480e432c2
}
