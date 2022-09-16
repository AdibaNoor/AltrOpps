import 'package:altropps/util/Card_custom.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        )
    );;
  }
}
