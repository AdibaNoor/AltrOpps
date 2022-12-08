import 'package:altropps/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6DEC0),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Fav',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Page',
                      style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
