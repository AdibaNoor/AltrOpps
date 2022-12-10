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
      backgroundColor: Colors.purple,
        body: Text('OpenSourcePAge')
    );
  }
}
