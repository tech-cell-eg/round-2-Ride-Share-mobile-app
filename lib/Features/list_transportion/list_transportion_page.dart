import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';
import 'package:ride_share/Features/list_transportion/widgets/list_transport_body.dart';

class ListTransportionPage extends StatelessWidget {
  const ListTransportionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppbar(title: "Select transport"),
      body: ListTransportBody(),
    );
  }
}
