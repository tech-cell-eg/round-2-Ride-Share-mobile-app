import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/custom_text_form_field.dart';
import 'package:ride_share/features/Auth/widgets/back_arrow_widget.dart';

import '../../../core/constants/app_colors.dart';
import '../widgets/Choose_Image_Widget.dart';

class CompleteProfieScreen extends StatelessWidget {
  CompleteProfieScreen({super.key});
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController districtController = TextEditingController();

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0).w,
            child: Column(
              children: [
                Row(
                  children: [
                    const ArrowBackWidget(),
                    SizedBox(
                      width: 70.w,
                    ),
                    const Expanded(
                      child: Text(
                        'profile',
                        style: AppTextStyles.s18w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                const ChooseImageWidget(),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  controller: fullNameController,
                  hintText: 'Full Name',
                  hintStyle:
                      AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
                    
                 SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  controller: fullNameController,
                  hintText: 'your mobile number',
                  hintStyle:
                      AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
          
                 SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  hintStyle:
                      AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
          
                 SizedBox(
                  height: 20.h,
                ),
                CustomTextField(
                  controller: streetController,
                  hintText: 'street',
                  hintStyle:
                      AppTextStyles.s16w500.copyWith(color: AppColors.lightGray),
                  borderSideColor: AppColors.mediumGray,
                ),
          
              SizedBox(
                  height: 20.h,
                ),
                 CustomTextField(
                    controller: cityController,
                    hintText: 'City',
                    hintStyle: AppTextStyles.s16w500
                        .copyWith(color: AppColors.lightGray),
                    borderSideColor: AppColors.mediumGray,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 33.sp,
                    ),
                  ),
                  SizedBox(
                  height: 20.h,
                ),
                 CustomTextField(
                    controller: districtController,
                    hintText: 'District',
                    hintStyle: AppTextStyles.s16w500
                        .copyWith(color: AppColors.lightGray),
                    borderSideColor: AppColors.mediumGray,
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 33.sp,
                    ),
                  ),
          
                  SizedBox(
                  height: 20.h,
                ),
          
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(text: 'Cancel',
                       onPressed: (){}, 
                       height: 54, 
                       width: 174, 
                       color: AppColors.whiteColor, 
                       borderRadius: 8, 
                       textStyle: AppTextStyles.s16w500,
                       borderColor:AppColors.primaryColor,
                       ),
                    ),
                 SizedBox(width: 10.w,),
                     Expanded(
                       child: CustomButton(text: 'save',
                       onPressed: (){}, 
                       height: 54, 
                       width: 174, 
                       color: AppColors.primaryColor, 
                       borderRadius: 8, 
                       textStyle: AppTextStyles.s16w500.copyWith(color: AppColors.whiteColor,),),
                     ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
