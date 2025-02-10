import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../Auth/widgets/back_arrow_widget.dart';
import 'language_widget.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20).w,
          child: Column(
            children: [
              Row(
                children: [
                  ArrowBackWidget(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20).w,
                    child: Text(
                      'Change password',
                      style: AppTextStyles.s18w500
                          .copyWith(color: AppColors.blackColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              LanguageWidget(),
              SizedBox(
                height: 16.h,
              ),
              LanguageWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
