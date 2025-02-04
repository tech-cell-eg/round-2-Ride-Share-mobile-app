import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class AvailableCarPage extends StatelessWidget {
  const AvailableCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppbar(),
      body: ListAvailableCarBody(),
    );
  }
}

class ListAvailableCarBody extends StatelessWidget {
  const ListAvailableCarBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
