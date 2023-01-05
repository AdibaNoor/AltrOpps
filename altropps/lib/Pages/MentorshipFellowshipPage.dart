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
  final ref = FirebaseDatabase.instance.ref('Fellowship&Mentorship');

  // launchURL(String url) async {
  //   if(await canLaunchUrl(Uri url)){
  //     await launch(url , forceWebView: true);
  //   }else{
  //     throw 'Could not Launch $url';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,)),
        title: Text('Mentorships & Fellowships', style: TextStyle(
          color: Colors.black, fontSize: 22,), textAlign: TextAlign.start,),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFD58DE0),
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
                      child: Container(
                        padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                alignment:Alignment.center,
                                child: Text(snapshot
                                    .child('NAME')
                                    .value
                                    .toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800,),textAlign: TextAlign.center,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                              ),
                              SizedBox(height: 10,),
                              Link(
                                target: LinkTarget.self,
                                uri: Uri.parse("snapshot.child('LINK').value.toString()"),
                                // uri: Uri.parse("www.google.com"),
                                builder: (context, followLink) =>
                                    InkWell(
                                      onTap: ()=> launch(snapshot.child('LINK').value.toString()),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('Apply Now',
                                              style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),
                                            Icon(Icons.call_made_rounded,size: 18,color: Colors.black,),
                                          ],

                                        ),
                                          
                                          width: w*0.4,
                                          height: h*0.05,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                              borderRadius: BorderRadius.circular(20),
                                              // image: DecorationImage(
                                              //     image: AssetImage(
                                              //         "assets/ApplyNow.png"
                                              //     )
                                              // ),
                                          ),
                                      ),
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