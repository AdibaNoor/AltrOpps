import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LiveOpportunityPage.dart';
import 'package:altropps/Pages/auth_controller.dart';
import 'package:altropps/widgets/info_card.dart';
import 'package:flutter/material.dart';

import 'LogInPage.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
              emailController.text,
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
            GestureDetector(
              onTap: (){
                AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                  width: w*0.5,
                  height: h*0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/Loginbtn.png"
                          )
                      )
                  ),
                  child: Center(
                    child:Text('Sign up',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold, color: Colors.white,),),
                  )
              ),
            ),



    ],
    ),
    ));
  }
}

