import 'package:altropps/Pages/HomePage.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class MentorshipFellowshipPage extends StatefulWidget {
  const MentorshipFellowshipPage({Key? key}) : super(key: key);

  @override
  State<MentorshipFellowshipPage> createState() => _MentorshipFellowshipPageState();
}

class _MentorshipFellowshipPageState extends State<MentorshipFellowshipPage> {
  final ref = FirebaseDatabase.instance.ref('FELLOWSHIPS');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
            },
            child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        title: Text('Mentorships & Fellowships',style: TextStyle(color: Colors.black,fontSize: 22,),textAlign: TextAlign.start,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
            Expanded(
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  return ListTile(
                    title: Text(snapshot.child('B').value.toString()),
                  );
                }
              ),
            )
          ],
        ),

    );
  }
}
