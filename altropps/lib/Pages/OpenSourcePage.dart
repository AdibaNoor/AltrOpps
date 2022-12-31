import 'package:altropps/Pages/HomePage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class OpenSourcePage extends StatefulWidget {
  const OpenSourcePage({Key? key}) : super(key: key);

  @override
  State<OpenSourcePage> createState() => _OpenSourcePageState();
}

class _OpenSourcePageState extends State<OpenSourcePage> {
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
        title: Text('Open Source',style: TextStyle(color: Colors.black,fontSize: 22,),textAlign: TextAlign.start,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color:Color(0xFFD58DE0) ,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person,color: Colors.white,),
                        title: Text(snapshot.child('A').value.toString()),
                        subtitle: Text(snapshot.child('B').value.toString()),
                        tileColor: Color(0xFFD58DE0),
                        onTap: (){
                          // const url = Uri.parse("snapshot.child('B').value.toString()")
                        },
                        minVerticalPadding: 10,
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
