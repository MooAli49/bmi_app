import 'package:bmi_app/core/theme/app_theme.dart';
import 'package:bmi_app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
