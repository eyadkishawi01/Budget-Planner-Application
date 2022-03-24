import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/colors.dart';
import 'package:flutter/material.dart';

class TherdSplashScreen extends StatelessWidget {
  const TherdSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg1.png"), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 88.0, left: 24, right: 24),
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    color: AppColors.blackText.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "B",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.witheText),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Plan ahead your expensess and gain total control",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.witheText),
                  ),
                ),
                const SizedBox(height: 70),
                GreenButton(text: "Get started", width: 327),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
