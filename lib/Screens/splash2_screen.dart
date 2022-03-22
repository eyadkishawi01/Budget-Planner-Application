import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/Widgets/normal_button.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ScndSplashScreen extends StatelessWidget {
  const ScndSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(78),
                child: Text(
                  "Get the life you want!Save more money.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.witheText),
                ),
              ),
              const Expanded(child: SizedBox()),
              GreenButton(text: "Create free account"),
              SizedBox(height: 12),
              NormalButton(
                  text: "Continue with facebook", color: AppColors.facebook),
              SizedBox(height: 24),
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: 16, color: AppColors.witheText),
              ),
              SizedBox(height: 14),
              NormalButton(
                  text: "Login", color: AppColors.witheText.withOpacity(0.3)),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
