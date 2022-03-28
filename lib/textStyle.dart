import 'package:budgetplannerui/colors.dart';
import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  BoldText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.blackText),
    );
  }
}

class RegularText extends StatelessWidget {
  RegularText({Key? key, required this.text, required this.size})
      : super(key: key);
  String text;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        color: AppColors.blackText,
      ),
    );
  }
}
