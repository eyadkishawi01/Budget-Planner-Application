import 'package:budgetplannerui/Widgets/green_button.dart';
import 'package:budgetplannerui/colors.dart';
import 'package:budgetplannerui/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_list_pick/country_list_pick.dart';

class MobileNumPage extends StatelessWidget {
  const MobileNumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: AppColors.background,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Ionicons.arrow_back_outline,
                size: 25,
              ),
              const SizedBox(height: 25),
              BoldText(text: "Let's get started"),
              const SizedBox(height: 100),
              RegularText(text: "What is your mobile number?"),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                    color: AppColors.witheText,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: AppColors.border)),
                child: Row(
                  children: [
                    // CountryCodePicker(
                    //   hideMainText: false,
                    //   textOverflow: ,
                    //   closeIcon: Icon(Ionicons.chevron_down_outline),
                    //   initialSelection: 'US',
                    //   backgroundColor: Colors.black,
                    // ),

                    CountryListPick(
                        appBar: AppBar(
                          backgroundColor: AppColors.endGreen,
                          shadowColor: Colors.transparent,
                          foregroundColor: AppColors.blackText,
                          title: Text('Pick your country'),
                        ),
                        theme: CountryTheme(
                            isDownIcon: true,
                            isShowFlag: true,
                            isShowTitle: false,
                            isShowCode: false,
                            searchHintText: 'Pick your country',
                            showEnglishName: true,
                            labelColor: AppColors.blackText,
                            alphabetSelectedBackgroundColor: Colors.black,
                            alphabetSelectedTextColor: Colors.white,
                            alphabetTextColor: Colors.black),
                        initialSelection: 'US'),

                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Mobile number',
                          ),
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(bottom: 33.0),
                child: Center(child: GreenButton(text: "Continue")),
              )
            ],
          ),
        ),
      )),
    );
  }
}
