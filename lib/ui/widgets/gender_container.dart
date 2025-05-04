import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';
class GenderContainer extends StatelessWidget {
  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderContainer({
    super.key,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        width: 155,
        decoration: BoxDecoration(
          color: isSelected
              ? ColorsManger.selcetedContainerColor
              : ColorsManger.unSelcetedContainerColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              gender == 'Male' ? Icons.male : Icons.female,
              size: 144,
              color: ColorsManger.whiteColor,
            ),
            Text(gender, style: TextStyles.font20W400),
          ],
        ),
      ),
    );
  }
}
