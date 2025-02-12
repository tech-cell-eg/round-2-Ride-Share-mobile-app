import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/shared/dialogs/custom_success_dialog.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

class ComplainScreenBody extends StatefulWidget {
  const ComplainScreenBody({super.key});

  @override
  State<ComplainScreenBody> createState() => _ComplainScreenBodyState();
}

class _ComplainScreenBodyState extends State<ComplainScreenBody> {
  String? selectedValue = "Vehicle not clean";

  final List<String> items = [
    "Vehicle not clean",
    "Driver was late",
    "Bad behavior",
    "Other"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.appBarSpace),
            Container(
              decoration: _dropDownDecoration(),
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: selectedValue,
                    padding: const EdgeInsetsDirectional.only(
                        start: 20, end: 17, top: 10, bottom: 10),
                    isExpanded: true,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8),
                    style: AppTextStyles.dropDownButtonStyle,
                    dropdownColor: AppColors.white,
                    icon: SvgPicture.asset(MyIcons.iconsArrowDownIcon),
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.dropDownButtonStyle,
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwTextFields),
            const TextField(
              minLines: 4,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: AppStrings.writeYourComplain,
                hintMaxLines: 2,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 19),
              ),
            ),
            const SizedBox(height: 32),
            _submitButton(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _dropDownDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: AppColors.inputDecorationBorderColor,
        width: 1.0,
      ),
    );
  }

  Padding _submitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 26 - AppSizes.screenPadding,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            customSuccessDialog(
              context,
              AppStrings.sendSuccessful,
              AppStrings.sendComplainSuccessful,
              AppStrings.back,
              () {
                context.pop();
              },
            );
          },
          child: const Text(AppStrings.submit),
        ),
      ),
    );
  }
}
