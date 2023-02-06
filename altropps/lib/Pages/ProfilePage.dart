import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LiveOpportunityPage.dart';
import 'package:altropps/Pages/auth_controller.dart';
import 'package:altropps/widgets/info_card.dart';
import 'package:flutter/material.dart';

import 'LogInPage.dart';

class ProfilePage extends StatelessWidget {
  String email;
  ProfilePage({Key? key, required this.email}) : super(key: key);


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
          backgroundImage: AssetImage('assets/logo.png'),

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
        //  email,
        "altropps@user.com",
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
          AuthController.instance.logout();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            alignment: Alignment.center,
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
                color: Color(0xFFD58DE0),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/Loginbtn.png"
                    )
                )
            ),
            child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children:[
                  Icon(Icons.logout_outlined, color: Colors.white),
                  Text('Sign Out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,),),

                ]
            )
        ),
      ),


      ],
    ),
    ));
  }
}

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//
//   var emailController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         minimum: const EdgeInsets.only(top:100),
//         child: Column(
//           children: <Widget>[
//
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/img.png'),
//
//             ),
//             Text(
//               "AltrOpps User",
//               style: TextStyle(
//               fontSize: 40.0,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Source Sans Pro",
//
//     ),
//     ),
//             Text(
//               ,
//               style: TextStyle(
//               fontSize: 30,
//               color: Colors.black,
//               letterSpacing: 1.0,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Source Sans Pro",
//
//               ),
//
//         ),
//             SizedBox(
//               height: 20,
//               width: 200,
//               child: Divider(
//               color: Colors.black,
//
//     ),
//     ),
//             InfoCard(text: "History" , icon: Icons.history, onPressed: ()async{}),
//             InfoCard(text: "Saved Opportunities" , icon: Icons.schedule, onPressed: ()async{}),
//             InfoCard(text: "Community" , icon: Icons.group, onPressed: ()async{}),
//             InfoCard(text: "Analysis" , icon: Icons.analytics, onPressed: ()async{}),
//             GestureDetector(
//                 onTap: (){
//                   AuthController.instance.logout();
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
//                 },
//                 child: Container(
//                     alignment: Alignment.center,
//                     width: w*0.5,
//                     height: h*0.08,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         image: DecorationImage(
//                             image: AssetImage(
//                                 "assets/Loginbtn.png"
//                             )
//                         )
//                     ),
//                     child: Row(
//                         mainAxisAlignment:
//                         MainAxisAlignment.center,
//                       children:[
//                         Icon(Icons.logout_outlined, color: Colors.white),
//                         Text('Log Out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,),),
//
//                       ]
//                     )
//                 ),
//               ),
//
//
//     ],
//     ),
//     ));
//   }
// }
//
