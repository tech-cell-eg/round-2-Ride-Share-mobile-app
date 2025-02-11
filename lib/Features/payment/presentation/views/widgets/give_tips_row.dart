import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../data/models/tips_model.dart';

class GiveTipsRow extends StatefulWidget {
  const GiveTipsRow({
    super.key,
  });

  @override
  State<GiveTipsRow> createState() => _GiveTipsRowState();
}

class _GiveTipsRowState extends State<GiveTipsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...tips.asMap().entries.map(
          (entry) {
            var index = entry.key;
            var tip = entry.value;
            return GestureDetector(
              onTap: () {
                tips[index].isSelected = !tips[index].isSelected;
                for (var i = 0; i < tips.length; i++) {
                  if (i != index) {
                    tips[i].isSelected = false;
                  }
                }
                setState(() {});
              },
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 60,
                  maxWidth: 60,
                  minHeight: 50,
                  minWidth: 50,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: tip.isSelected
                        ? AppColors.mainColor
                        : const Color(0xFF5A5A5A),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Center(
                  child: Text(
                    entry.value.title,
                    style: AppStyles.medium16.copyWith(
                      color:
                          tip.isSelected ? AppColors.mainColor : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
