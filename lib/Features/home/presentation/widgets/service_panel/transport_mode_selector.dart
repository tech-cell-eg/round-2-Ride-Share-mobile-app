import 'package:flutter/material.dart';

class TransportModeSelector extends StatefulWidget {
  const TransportModeSelector({super.key});

  @override
  State<TransportModeSelector> createState() => _TransportModeSelectorState();
}

class _TransportModeSelectorState extends State<TransportModeSelector> {
  int selectedIndex = 0;
  final List<String> modes = ['Transport', 'Delivery'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: Row(
        children: List.generate(modes.length, (index) {
          return Expanded(child: _buildModeButton(index));
        }),
      ),
    );
  }

  Widget _buildModeButton(int index) {
    bool isSelected = selectedIndex == index;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFF8AD4B5)),
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: isSelected ? null : const Color(0xFFE2F5ED),
      ),
      onPressed: () => setState(() => selectedIndex = index),
      child: Text(
        modes[index],
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xFFE2F5ED),
    );
  }
}
