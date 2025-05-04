import 'package:bmi_app/ui/screens/bmi_screen.dart';
import 'package:bmi_app/ui/widgets/calculate_button.dart';
import 'package:bmi_app/ui/widgets/custom_app_bar.dart';
import 'package:bmi_app/ui/widgets/gender_container.dart';
import 'package:bmi_app/ui/widgets/icon_buttons_container.dart';
import 'package:bmi_app/ui/widgets/slider_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  double personHeight = 150;
  int personWeight = 50;
  int personAge = 20;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderContainer(
                  gender: 'Male',
                  isSelected: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),
                GenderContainer(
                  gender: 'Female',
                  isSelected: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),
          ),
          SliderContainer(
            personHeight: personHeight,
            onHeightChanged: (value) {
              setState(() {
                personHeight = value;
              });
            },
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButtonsContainer(
                  text: 'Weight',
                  value: personWeight,
                  onIncrement:
                      () => setState(() {
                        personWeight++;
                      }),
                  onDecrement:
                      () => setState(() {
                        personWeight--;
                      }),
                ),
                IconButtonsContainer(
                  text: 'Age',
                  value: personAge,
                  onIncrement:
                      () => setState(() {
                        personAge++;
                      }),
                  onDecrement:
                      () => setState(() {
                        personAge--;
                      }),
                ),
              ],
            ),
          ),
          CalculateButton(
            title: 'Calculate',
            onTap: () {
              bmiCalculator(height: personHeight, weight: personWeight);
            },
          ),
        ],
      ),
    );
  }

  void bmiCalculator({required double height, required int weight}) {
    double bmi = weight / ((height / 100) * (height / 100));
    String advice;
    String stutus;

    if (bmi < 18.5) {
      advice = 'Try to include more balanced meals and consult a nutritionist.';
      stutus = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      advice =
          'Normal weight: Great job! Keep maintaining your healthy lifestyle.';
      stutus = 'Normal';
    } else if (bmi >= 25 && bmi < 29.9) {
      advice = 'Consider regular exercise and a healthy diet.';
      stutus = 'Overweight';
    } else {
      advice = 'It is advisable to consult a doctor or health specialist.';
      stutus = 'Obese';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => BmiScreen(bmi: bmi, advice: advice, stutus: stutus),
      ),
    );
  }
}
