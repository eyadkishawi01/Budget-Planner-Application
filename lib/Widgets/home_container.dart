import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/colors.dart';
import 'package:budgetplannerui/textStyle.dart';
import 'package:flutter/material.dart';

class TabTwoPage extends StatelessWidget {
  const TabTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.witheText,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowContainer,
                blurRadius: 16,
                offset: const Offset(0, 4), // Shadow position
              ),
            ],
          ),
          width: 335,
          height: 330,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              children: [
                RegularText(
                    text:
                        "You don’t have set any account. Create one in seconds.",
                    size: 16),
                const SizedBox(height: 30),
                Image.asset("assets/list.png", fit: BoxFit.cover),
                const Spacer(),
                GreenButton(text: "Add account", width: 303),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
