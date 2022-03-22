import 'package:budgetplannerui/colors.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  GreenButton({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 303,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.endGreen,
            AppColors.startGreen,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowGreen,
            blurRadius: 16,
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.witheText),
          )),
    );
  }
}
