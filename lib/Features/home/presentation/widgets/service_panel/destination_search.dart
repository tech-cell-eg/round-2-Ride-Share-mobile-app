import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DestinationSearch extends StatelessWidget {
  const DestinationSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(color: Color(0xFFA0A0A0)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE2F5ED),
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Iconsax.heart),
        hintText: 'Search for a location',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF8AD4B5)),
        ),
      ),
    );
  }
}
