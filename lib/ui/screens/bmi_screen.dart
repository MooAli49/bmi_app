import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/ui/widgets/calculate_button.dart';
import 'package:bmi_app/ui/widgets/custom_app_bar.dart';
import 'package:bmi_app/ui/widgets/result_container.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({
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
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Result', style: TextStyles.font40W700White),
          const SizedBox(height: 20),
          ResultContainer(bmi: bmi, advice: advice, stutus: stutus),
          Expanded(child: const SizedBox(height: 20)),
          CalculateButton(
            title: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
