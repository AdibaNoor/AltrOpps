import 'package:altropps/Pages/FavPage.dart';
import 'package:altropps/Pages/LiveOpportunityPage.dart';
import 'package:altropps/Pages/MentorshipFellowshipPage.dart';
import 'package:altropps/Pages/OpenSourcePage.dart';
import 'package:altropps/Pages/PostPage.dart';
import 'package:altropps/Pages/ProfilePage.dart';
import 'package:altropps/Pages/ScholarshipPage.dart';
import 'package:altropps/util/Card_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../util/theme_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  
// class HomePage extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) => Scaffold(
  //       appBar: AppBar(
  //         iconTheme: Theme.of(context).iconT heme,
  //         backgroundColor: Colors.transparent,
  //         leading: Icon(Icons.menu),
  //         title: Text("altProp"),
  //         elevation: 0,
  //         actions: [
  //           ChangeThemeButtonWidget(),
  //         ],
  //       ),
  //       body: ProfileWidget(),
  //       extendBody: true,
  //       bottomNavigationBar: NavigationBarWidget(),
  //     );

//   @override
//   Widget build(BuildContext context) {
//     final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
//         ? 'DarkTheme'
//         : 'LightTheme';
//
//     var Altropps;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orange,
//         title: Text(Altropps.title),
//         actions: [
//           ChangeThemeButtonWidget(),
//         ],
//       ),
//       body: Center(
//         child: Text(
//           'Hello $text!',
//           style: TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

State<MyHomePage> createState() => _MyHomePageState();

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // final List<Widget> _pages = [
  //   // Row(children: [
  //   //   Text('Home',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
  //   //   Text('Page',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
  //   // ),
  //   // Row(children: [
  //   //   Text('Fav',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
  //   //   Text('Page',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
  //   // ),
  //   // Row(children: [
  //   //   Text('Post',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
  //   //   Text('Page',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
  //   // ),
  //   // Row(children: [
  //   //   Text('Profile',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
  //   //   Text('Page',
  //   //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
  //   // ),
  // ];
  @override
  Widget build(BuildContext context) {
  final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
        
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.dashboard,color: Color(0xFFD58DE0),),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.notifications_none_rounded,color: Colors.black),
          ],
        ),

      ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children:[
              //appbar
             
              //horizontal scroll
              Container(
                height: 180,
                child: PageView(
                  children: [
                    Card_custom(),
                    Card_custom(),
                    Card_custom(),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              //main category card
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScholarshipPage()));
                        },
                        child: Container(
                          child: Center(child: Text('Scholarship',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                          width: 140,
                          height: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFFD58DE0),
                                borderRadius: BorderRadius.circular(12)
                            ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MentorshipFellowshipPage()));
                        },
                        child: Container(
                          child: Center(child: Text('Mentorship & Fellowship',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
                          width: 140,
                          height: 170,
                          decoration: BoxDecoration(
                              color: Color(0xFFD58DE0),
                              borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LiveOpportunityPage()));
                        },
                        child: Container(
                            child: Center(child: Text('Live Opportunities',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
                            decoration: BoxDecoration(
                                color: Color(0xFFD58DE0),
                                borderRadius: BorderRadius.circular(12)
                            ),
                          width: 140,
                            height: 170,
                            ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OpenSourcePage()));
                        },
                        child: Container(
                          child: Center(child: Text('Open Source',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                          decoration: BoxDecoration(
                            color: Color(0xFFD58DE0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 140,
                            height: 140,
                            // color: Color(0xFFD58DE0)
                          ),
                      ),
                    ],
                  ),
                ],
              ),

              //icons card

            ]
            ),
        ),

      bottomNavigationBar: GNav(
        gap: 5,
        color: Colors.black38,
        duration: Duration(milliseconds: 100),
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          GButton(
            icon: Icons.star_border,
            text: 'Fav',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FavPage()));
            },
          ),
          GButton(
            icon: Icons.add_box_outlined,
            text: 'Post',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPage()));
            },
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'Profile',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );

    

  }
}
