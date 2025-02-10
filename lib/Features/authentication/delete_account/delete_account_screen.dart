import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
 
import 'package:ride_share/features/Auth/widgets/back_arrow_widget.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0).w,
          child: Column(
            children: [
              const ArrowBackWidget(),
              SizedBox(height: 30.h,),
              const Text('Are you sure you want to delete your account? Please read how account deletion will affect.\nDeleting your account removes personal information our database. Tour email becomes permanently reserved and same email cannot be re-use to register a new account.'),
              SizedBox(height: 32.h,),
              CustomButton(text: 'Delete',
               onPressed: (){}, 
               height: 54.h,
                width: 340.w, 
                color: AppColors.red,
                 borderRadius: 8.sp, 
                 textStyle: AppTextStyles.s16w500.copyWith(color: AppColors.whiteColor,),),
            ],
          ),
        ),
      ),
    );
  }
}