import 'package:altropps/Pages/LogInPage.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Text('Sign Up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              //details
              //other option

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                  child: Text('Already have an account? LogIn.',style: TextStyle(fontWeight: FontWeight.w500),))
            ],
          ),
        ),
      ),
    );
  }
}
