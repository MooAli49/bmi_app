import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class SliderContainer extends StatelessWidget {
  final double personHeight;
  final ValueChanged<double> onHeightChanged;

  const SliderContainer({
    super.key,
    required this.personHeight,
    required this.onHeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 190,
      decoration: BoxDecoration(
        color: ColorsManger.selcetedContainerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Height', style: TextStyles.font20W400),
          Text(
            '${personHeight.toStringAsFixed(0)}cm',
            style: TextStyles.font40W700White,
          ),
          Slider(
            value: personHeight,
            min: 0,
            max: 200,
            thumbColor: ColorsManger.redColor,
            activeColor: ColorsManger.redColor,
            inactiveColor: ColorsManger.whiteColor,
            onChanged: onHeightChanged,
          ),
        ],
      ),
    );
  }
}
