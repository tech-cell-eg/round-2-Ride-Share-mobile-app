import 'package:flutter/material.dart';
import 'package:ride_share/app.dart';
import 'package:yandex_maps_mapkit_lite/init.dart' as init;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init.initMapkit(apiKey: '9b214a7b-b858-431c-b059-a66412553859');
  runApp(const MyApp());
}
