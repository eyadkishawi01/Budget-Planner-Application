import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../colors.dart';

class OneLastThingPage extends StatelessWidget {
  const OneLastThingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Ionicons.arrow_back_outline,
                        size: 25,
                      ),
                      const SizedBox(height: 25),
                      BoldText(text: "One last thing"),
                      const SizedBox(height: 20),
                      RegularText(text: "Terms of service", size: 16),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 450,
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 0.0),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut\naliquip ex ea commodo consequat.\n\nDuis aute irure dolor in reprehenderit in voluptate\nvelit esse cillum dolore eu fugiat nulla pariatur.\nExcepteur sint occaecat cupidatat non proident,\nsunt in culpa qui officia deserunt mollit anim id\nest laborum.\n\nPellentesque habitant morbi tristique senectus et\nnetus et malesuada fames ac turpis egestas ipsum.\nVestibulum tortor quam, feugiat vitae, ultricies eget,\ntempor sit amet, ante eu libero sit amet quam.\n\nAenean ultricies mi vitae est. Mauris placerat\neleifend leo. Quisque sit est et sapien ullamcorper.",
                                style: TextStyle(height: 1.6),
                              ),
                            );
                          },
                          shrinkWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      GreenIconButton(
                        text: "Agree",
                        color1: AppColors.endGreen,
                        color2: AppColors.startGreen,
                        shColor: AppColors.shadowGreen,
                        con: Ionicons.checkmark_sharp,
                      ),
                      const SizedBox(height: 20),
                      GreenIconButton(
                          color1: AppColors.endRed,
                          color2: AppColors.startRed2,
                          shColor: AppColors.startRed2,
                          text: "Decline",
                          con: Ionicons.close_sharp),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
