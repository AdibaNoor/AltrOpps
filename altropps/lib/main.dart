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

      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


