import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class IconButtonsContainer extends StatelessWidget {
  const IconButtonsContainer({
    super.key,
    required this.text,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });
  final String text;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 155,
      decoration: BoxDecoration(
        color: ColorsManger.selcetedContainerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyles.font20W400),
          Text(value.toString(), style: TextStyles.font40W700White),
          Row(
            children: [
              IconButton(
                onPressed: onIncrement,
                icon: Icon(Icons.add, size: 20, color: ColorsManger.whiteColor),
              ),
              const Spacer(),
              IconButton(
                onPressed: onDecrement,
                icon: Icon(
                  Icons.remove,
                  size: 20,
                  color: ColorsManger.whiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
