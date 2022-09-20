import 'package:altropps/Pages/FavPage.dart';
import 'package:altropps/Pages/PostPage.dart';
import 'package:altropps/Pages/ProfilePage.dart';
import 'package:altropps/util/Card_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../util/theme_provider.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark;
  //   ? 'DarkTheme'
  //   : 'LightTheme';
  //   return Scaffold(
  //     appBar: AppBar(
  //      backgroundColor: Colors.orange,
  //      title: Text(MyApp.title),
  //      actions: [
  //        ChangeThemeButtonWidget(),
  //
  //    ],
  //
  //     ), //appbar
  //     body: Center(
  //       child: Text(
  //       'Hello $text1',
  //        style: TextStyle(
  //       fontSize: 28,
  //       fontWeight: FontWeight.bold,
  //         ), //textstyle
  //       ), //text
  //     ),//center
  //
  //  ); //scaffold
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex=0;

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
    return Scaffold(
        backgroundColor: Color(0xFFF6DEC0),
        body: SafeArea(
          child: Column(children:[
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Home',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                      Text('Page',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),
                    ],
                  ),
                  Icon(Icons.notifications_none),
                ],
              ),
            ),
            SizedBox(height: 25,),
            //horizontal scroll
            Container(
              height: 200,
              child: PageView(

                children: [
                  Card_custom(),
                  Card_custom(),
                  Card_custom(),

                ],
              ),
            )

            //icons card

            //main category card
          ]
          ),
        ),
      bottomNavigationBar: GNav(
        gap: 5,
        color: Colors.black38,
        duration: Duration(milliseconds: 100),
        tabs: [
          GButton(icon: Icons.home_outlined,
            text:'Home' ,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
          },),
          GButton(icon: Icons.star_border,
            text: 'Fav',
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FavPage()));
              },),
          GButton(icon: Icons.add_box_outlined,
            text: 'Post',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PostPage()));
          },),
          GButton(icon: Icons.person_outline,
            text: 'Profile',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
          },),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );;
  }
}
