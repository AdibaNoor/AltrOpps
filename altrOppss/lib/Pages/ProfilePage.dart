import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LiveOpportunityPage.dart';
import 'package:altropps/widgets/info_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.only(top:100),
        child: Column(
          children: <Widget>[

            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/img.png'),

            ),
            Text(
              "AltrOpps User",
              style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro",

    ),
    ),
            Text(
              "@altropps_user",
              style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro",

              ),

        ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
              color: Colors.black,

    ),
    ),
            InfoCard(text: "History" , icon: Icons.history, onPressed: ()async{}),
            InfoCard(text: "Saved Opportunities" , icon: Icons.schedule, onPressed: ()async{}),
            InfoCard(text: "Community" , icon: Icons.group, onPressed: ()async{}),
            InfoCard(text: "Analysis" , icon: Icons.analytics, onPressed: ()async{}),
            //InfoCard(text: "Signout" , icon: Icons.signout, onPressed: ()async{})



    ],
    ),
    ));
  }
}

