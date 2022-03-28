import 'package:budgetplannerui/colors.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class GreenButton extends StatelessWidget {
  GreenButton({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
  String text;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
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
            offset: const Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: TextButton(
          style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
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

class GreenIconButton extends StatelessWidget {
  GreenIconButton(
      {Key? key,
      required this.color1,
      required this.color2,
      required this.shColor,
      required this.text,
      required this.con})
      : super(key: key);
  Color color1, color2, shColor;
  String text;
  IconData con;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              color1,
              color2,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: shColor,
              blurRadius: 16,
              offset: const Offset(0, 4), // Shadow position
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 90),
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: AppColors.blackText.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    con,
                    color: AppColors.witheText,
                  )),
            ),
            TextButton(
                onPressed: null,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.witheText),
                )),
          ],
        ),
      ),
    );
  }
}
