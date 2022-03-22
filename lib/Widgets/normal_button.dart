import 'package:flutter/material.dart';

import '../colors.dart';

class NormalButton extends StatelessWidget {
  NormalButton({Key? key, required this.text, required this.color})
      : super(key: key);
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 303,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
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
