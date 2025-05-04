import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.title,required this.onTap});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorsManger.redColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Text(title, style: TextStyles.font40W700White),
      ),
    );
  }
}
