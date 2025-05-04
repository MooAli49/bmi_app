import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('BMI Calculator'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
