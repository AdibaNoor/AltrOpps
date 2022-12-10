import 'package:flutter/material.dart';

class ScholarshipPage extends StatefulWidget {
  const ScholarshipPage({Key? key}) : super(key: key);

  @override
  State<ScholarshipPage> createState() => _ScholarshipPageState();
}

class _ScholarshipPageState extends State<ScholarshipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
        body: Text('ScholarshipPAge')
    );
  }
}
