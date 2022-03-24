import 'package:flutter/material.dart';

import '../colors.dart';

class NormalButton extends StatelessWidget {
  NormalButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.width,
      required this.shColor,
      required this.txtColor})
      : super(key: key);
  String text;
  double width;
  Color color;
  Color shColor;
  Color txtColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
        boxShadow: [
          BoxShadow(
            color: shColor,
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
                fontSize: 18, fontWeight: FontWeight.bold, color: txtColor),
          )),
    );
  }
}
