import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/shared/app_bar/arrow_back_icon.dart';
import 'package:ride_share/features/history/UI/Widgets/custom_tab_bar.dart';
import 'package:ride_share/features/history/UI/Widgets/custom_tab_bar_view.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: true,
          elevation: 0,
          leading: const ArrowBackIcon(),
          leadingWidth: 85,
          title: const Text(
            'History',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomTabBar(),
          ),
        ),
        body: const CustomTabBarView(),
      ),
    );
  }
}
