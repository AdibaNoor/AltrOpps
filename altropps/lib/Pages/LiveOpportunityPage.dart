import 'package:altropps/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class LiveOpportunityPage extends StatefulWidget {
  const LiveOpportunityPage({Key? key}) : super(key: key);

  @override
  State<LiveOpportunityPage> createState() => _LiveOpportunityPageState();
}

class _LiveOpportunityPageState extends State<LiveOpportunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: InkWell(
         onTap: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
         },
           child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
       title: Text('Live Opportunities',style: TextStyle(color: Colors.black,fontSize: 22,),textAlign: TextAlign.start,),
       elevation: 0,
       backgroundColor: Colors.white,
     ),

    );
  }
}
