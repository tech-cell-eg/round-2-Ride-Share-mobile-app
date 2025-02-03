import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('data'),
        // Expanded(child: YandexMap()),
      ],
    );
  }
}
