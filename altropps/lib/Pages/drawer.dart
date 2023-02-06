import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LiveOpportunityPage.dart';
import 'package:altropps/Pages/MentorshipFellowshipPage.dart';
import 'package:altropps/Pages/OpenSourcePage.dart';
import 'package:altropps/Pages/ProfilePage.dart';
import 'package:altropps/Pages/ScholarshipPage.dart';
import"package:flutter/material.dart";
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'FavPage.dart';

class CustomDrawer extends StatefulWidget {
 const CustomDrawer({Key? key}) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<ScreenHiddenDrawer> _pages =[];
  final myTextStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: Colors.white
  );
  final mySelectTextStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Color(0xFF9F5AA6)
  );
  void initState(){
    super.initState();
    _pages =[
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Home Page',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), MyHomePage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Open Source',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), OpenSourcePage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Live Opportunities',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), LiveOpportunityPage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Mentorship & Fellowship',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), MentorshipFellowshipPage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Scholarships',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), ScholarshipPage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Favourite',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), FavPage()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Profile',
        selectedStyle: mySelectTextStyle,
        baseStyle: myTextStyle,
        colorLineSelected: Colors.white,
      ), ProfilePage(email: '',)),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color(0xFFD58DE0),
      screens: _pages,
      initPositionSelected: 0,
      withAutoTittleName: false,
      disableAppBarDefault: true,
      verticalScalePercent: 80,
      slidePercent:60,
    );
  }
}
