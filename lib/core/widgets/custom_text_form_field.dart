import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

 

 

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
      this.hintText,
      this.label,
      this.validator,
    this.isPassword = false, 
    this.suffixIcon, required this.hintStyle, required this.borderSideColor,
  });
  TextEditingController controller;
  final String? hintText;
  final String? label;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Widget? suffixIcon;
 final  TextStyle hintStyle;
 final Color borderSideColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      
      //cursorColor: AppColors.primaryColor,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
         hintStyle: hintStyle,
        suffixIcon:  suffixIcon   ,
        disabledBorder: OutlineInputBorder(
          
        ),
        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: borderSideColor)),
        
      ),
    );
  }
}
