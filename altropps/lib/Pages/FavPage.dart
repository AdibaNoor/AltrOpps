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
      body: Column(
        children: [
          Text('FavPage',style: TextStyle(fontSize: 28, color: Colors.black),)
        ],
      ),
    );
  }
}
