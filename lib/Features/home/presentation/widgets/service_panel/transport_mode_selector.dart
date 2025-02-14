import 'package:flutter/material.dart';

class TransportModeSelector extends StatefulWidget {
  const TransportModeSelector({super.key});

  @override
  State<TransportModeSelector> createState() => _TransportModeSelectorState();
}

class _TransportModeSelectorState extends State<TransportModeSelector> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF8AD4B5)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                backgroundColor:
                    selectedIndex != 0 ? const Color(0xFFE2F5ED) : null,
              ),
              onPressed: () {
                selectedIndex != 0
                    ? setState(() {
                      selectedIndex = 0;
                    })
                    : null;
              },
              child: Text(
                'Transport',
                style: TextStyle(
                  color: selectedIndex == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                selectedIndex != 1
                    ? setState(() {
                      selectedIndex = 1;
                    })
                    : null;
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFF8AD4B5)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                backgroundColor:
                    selectedIndex != 1 ? const Color(0xFFE2F5ED) : null,
              ),
              child: Text(
                'Delivery',
                style: TextStyle(
                  color: selectedIndex == 1 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
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
