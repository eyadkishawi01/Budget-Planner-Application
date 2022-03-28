import 'Widgets/home_container.dart';
import 'Screens/home_screen.dart';
import 'Screens/one_last_hting_screen.dart';
import 'Screens/splash1_screen.dart';
import 'colors.dart';
import 'package:flutter/material.dart';
import 'Screens/add_photo_screen.dart';
import 'Screens/mobile_num_screen.dart';
import 'Screens/splash2_screen.dart';
import 'Screens/splash3_Screen.dart';
import 'Widgets/green_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          fontFamily: 'Karla',
          primaryColor: Colors.black,
          scaffoldBackgroundColor: AppColors.background),
      title: 'Welcome to Flutter',
      home: HomePage(),
    );
  }
}
