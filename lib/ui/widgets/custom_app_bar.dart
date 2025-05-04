import 'package:flutter/material.dart';
    
class CustomAppBar extends StatelessWidget {

  const CustomAppBar({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'BMI Calculator',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}