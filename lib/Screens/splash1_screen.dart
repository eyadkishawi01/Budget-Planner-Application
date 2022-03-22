import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/colors.dart';
import 'package:flutter/material.dart';

class FirstSplashScreen extends StatelessWidget {
  const FirstSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Plan ahead your expenses and gain total control",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.witheText),
                ),
                const SizedBox(height: 25),
                GreenButton(text: 'Let’s get started'),
                const SizedBox(height: 60),
                Text(
                  "Skip this page",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.witheText),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
