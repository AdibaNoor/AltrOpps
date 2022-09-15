import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Onboarding_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        backgroundColor: Color(0xFFF6DEC0),
      ),
      home: OnBoardingPage(),
    );
  }
}


