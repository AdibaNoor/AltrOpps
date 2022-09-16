import 'package:altropps/util/Card_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex=0;

  final List<Widget> _pages = [
    Row(children: [
      Text('Home',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
      Text('Page',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
    ),
    Row(children: [
      Text('Fav',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
      Text('Page',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
    ),
    Row(children: [
      Text('Post',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
      Text('Page',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
    ),
    Row(children: [
      Text('Profile',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
      Text('Page',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),],
    ),
  ];
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
                children: [_pages.elementAt(_selectedIndex),
                  // Row(
                  //   children: [
                  //     Text('Home',
                  //       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                  //     Text('Page',
                  //       style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),
                  //   ],
                  // ),
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
        selectedIndex: _selectedIndex,
        onTabChange: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        color: Colors.black38,
        duration: Duration(milliseconds: 100),
        tabs: const[
          GButton(icon: Icons.home_outlined,
            text:'Home' ,),
          GButton(icon: Icons.star_border,
            text: 'Fav',),
          GButton(icon: Icons.add_box_outlined,
            text: 'Post',),
          GButton(icon: Icons.person_outline,
            text: 'Profile',),
        ],
      ),
    );;
  }
}
