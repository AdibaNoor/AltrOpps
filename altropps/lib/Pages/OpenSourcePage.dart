import 'package:altropps/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class OpenSourcePage extends StatefulWidget {
  const OpenSourcePage({Key? key}) : super(key: key);

  @override
  State<OpenSourcePage> createState() => _OpenSourcePageState();
}

class _OpenSourcePageState extends State<OpenSourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
            },
            child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        title: Text('Open Source',style: TextStyle(color: Colors.black,fontSize: 22,),textAlign: TextAlign.start,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
