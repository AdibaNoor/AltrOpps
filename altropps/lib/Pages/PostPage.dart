import 'package:altropps/Pages/HomePage.dart';
import 'package:flutter/material.dart';
class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF6DEC0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 25.0),
            child: Row(

              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                  },
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Text('Post',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('Page',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),),
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
