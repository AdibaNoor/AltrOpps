import 'package:altropps/Pages/RegistrationPage.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Text('LogIn',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              //details
              //other option
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationPage()));
                  },
                  child: Text("Don't have an account? SignUp Now.",style: TextStyle(fontWeight: FontWeight.w500),)),
            ],
          ),
        ),
      ),
    );
  }
}
