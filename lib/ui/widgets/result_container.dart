import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
    required this.bmi,
    required this.advice,
    required this.stutus,
  });
  final double bmi;
  final String advice;
  final String stutus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
      height: 500,
      width: 320,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorsManger.unSelcetedContainerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            stutus.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color:
                  stutus == 'Normal'
                      ? ColorsManger.greenColor
                      : stutus == 'Overweight'
                      ? ColorsManger.yellowColor
                      : stutus == 'Underweight'
                      ? ColorsManger.blueColor
                      : stutus == 'Obese'
                      ? ColorsManger.redColor
                      : ColorsManger.whiteColor,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            bmi.toStringAsFixed(1),
            maxLines: 1,
            style: TextStyles.font40W700White,
          ),
          const SizedBox(height: 15),
          Text(
            advice,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ColorsManger.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
