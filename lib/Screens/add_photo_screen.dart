import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/Widgets/normal_button.dart';
import 'package:budgetplannerui/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../colors.dart';

class AddPhotoPage extends StatelessWidget {
  const AddPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Ionicons.arrow_back_outline,
                size: 25,
              ),
              const SizedBox(height: 25),
              BoldText(text: "More about you"),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      RegularText(
                          text: "Upload your profile picture", size: 16),
                      const SizedBox(height: 40),
                      Stack(overflow: Overflow.visible, children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            "assets/profilePic.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: -12,
                            right: -5,
                            child: Container(
                              alignment: Alignment.center,
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [
                                    AppColors.endpurple,
                                    AppColors.Startpurple,
                                  ],
                                ),
                              ),
                              //using InkWell instade of IconButton to make the icon in the center of the circule;
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Ionicons.camera,
                                  color: AppColors.witheText,
                                ),
                              ),
                            ))
                      ]),
                      const SizedBox(height: 30),
                      RegularText(text: "Btw, you look great :)", size: 14),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 50),
                child: Row(
                  children: [
                    NormalButton(
                        text: "Maybe later",
                        color: AppColors.witheText,
                        width: 144,
                        shColor: const Color(0xFFEFF5FF),
                        txtColor: AppColors.shadowGreen),
                    const SizedBox(width: 30),
                    GreenButton(text: "Continue", width: 167),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
