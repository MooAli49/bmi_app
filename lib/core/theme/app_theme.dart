import 'package:bmi_app/core/styles/text_styles.dart';
import 'package:bmi_app/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static  ThemeData get appTheme=> ThemeData(
    scaffoldBackgroundColor: ColorsManger.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManger.unSelcetedContainerColor,
      elevation: 0,
      titleTextStyle: TextStyles.font20W600White as TextStyle?,
    ),
  );
}