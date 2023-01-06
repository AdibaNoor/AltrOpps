import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget{

  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard(
      {required this.text, required this.icon, required this.onPressed });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){},
      child: Card(
        color: Color(0xFFD58DE0),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading:  Icon(
            icon,
            color: Colors.white,
          ),

          title: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Source Sans Pro"
            ),
          ),
        ),
      ),
    );
  }
}
