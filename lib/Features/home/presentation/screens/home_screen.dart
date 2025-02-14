import 'package:flutter/material.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/core/shared/app_bar/notification_icon.dart';
import 'package:ride_share/features/home/presentation/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context, scaffoldKey),
      body: const HomeScreenBody(),
    );
  }

  CustomAppBar _buildAppBar(
    BuildContext context,
    GlobalKey<ScaffoldState> scaffoldKey,
  ) {
    return CustomAppBar(
      leading: MenuIcon(scaffoldKey: scaffoldKey),
      actions: [const NotificationIcon()],
    );
  }
}
