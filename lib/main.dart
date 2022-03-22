import 'package:budgetplannerui/Screens/splash1_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/splash2_screen.dart';
import 'Widgets/green_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Karla',
      ),
      title: 'Welcome to Flutter',
      home: ScndSplashScreen(),
    );
  }
}
