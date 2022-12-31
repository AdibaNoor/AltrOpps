import 'package:altropps/Pages/HomePage.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MentorshipFellowshipPage extends StatefulWidget {
  const MentorshipFellowshipPage({Key? key}) : super(key: key);

  @override
  State<MentorshipFellowshipPage> createState() => _MentorshipFellowshipPageState();
}

class _MentorshipFellowshipPageState extends State<MentorshipFellowshipPage> {
  final ref = FirebaseDatabase.instance.ref('FELLOWSHIPS');
  // launchURL(String url) async {
  //   if(await canLaunchUrl(Uri url)){
  //     await launch(url , forceWebView: true);
  //   }else{
  //     throw 'Could not Launch $url';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color:Color(0xFFD58DE0) ,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      // child: ListTile(
                      //   leading: Icon(Icons.person,color: Colors.white,),
                      //   title: Text(snapshot.child('A').value.toString()),
                      //   subtitle: Text(snapshot.child('B').value.toString()),
                      //   tileColor: Color(0xFFD58DE0),
                      //   onTap: (){
                      //
                      //   },
                      //   minVerticalPadding: 10,
                      //   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      // ),
                      child:Container(
                        child: Column(
                          children: [
                            Text(snapshot.child('B').value.toString()),
                            Link(
                              target: LinkTarget.self,
                              // uri: Uri.parse("snapshot.child('B').value.toString()"),
                              uri: Uri.parse("www.google.com"),
                              builder: (context,followLink) => ElevatedButton(
                                child: Text('Check out this opportunity'),
                                onPressed: followLink,
                              ),
                            ),
                          ],
                        )
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
