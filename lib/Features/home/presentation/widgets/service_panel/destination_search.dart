import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';

class DestinationSearch extends StatelessWidget {
  const DestinationSearch({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return TextField(
      style: const TextStyle(color: Color(0xFFA0A0A0)),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFE2F5ED),
        prefixIcon: SvgPicture.asset(
          AppIcons.searchIcon,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: SvgPicture.asset(AppIcons.heartIcon, fit: BoxFit.scaleDown),
        hintText: 'Search for a location',
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF8AD4B5)),
        ),
      ),
    );
  }
}
