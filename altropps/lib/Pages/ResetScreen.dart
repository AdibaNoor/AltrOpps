import 'package:altropps/Pages/RegistrationPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:altropps/Pages/HomePage.dart';



var emailController = TextEditingController();
var passwordController = TextEditingController();

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}


class _ResetScreenState extends State<ResetScreen> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    FirebaseAuth auth = FirebaseAuth.instance;

    return Scaffold(

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset('assets/logo.png'),
                  Text('Reset Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  //Text('Sign in to your account',style: TextStyle(fontSize: 10, color: Colors.grey[500])),
                  SizedBox(height:50, width :20),
                  Container(
                    margin:const EdgeInsets.only(left:20, right:20),
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                              blurRadius:5,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                        controller: emailController,
                        decoration:InputDecoration(
                            hintText: "Email address",
                            prefixIcon: Icon(Icons.email, color: Colors.purple),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        )
                    ),
                  ),
                  SizedBox(height:20,),
                  Container(
                    margin:const EdgeInsets.only(left:20, right:20),
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                              blurRadius:10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(child: Container(),),
                  //     Text('Forgot password?',style: TextStyle(fontSize: 10, color: Colors.grey[500])),
                  //   ]
                  // ),
                  SizedBox(height:40),

                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: w,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: (){
                                auth.sendPasswordResetEmail(email: emailController.text.trim());
                                Navigator.of(context).pop();
                              },
                            child: Container(
                                width: w*0.5,
                                height: h*0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Loginbtn.png"
                                        )
                                    )
                                ),
                                child: Center(
                                  child:Text('Send Request',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold, color: Colors.white,),),
                                )
                            ),)
                        ]
                    ),
                  ),

                  SizedBox(height: 70),




                  //details
                  //other option
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationPage()));
                      },
                      child: Text("Don't have an account? SignUp Now.",style: TextStyle(fontWeight: FontWeight.w500),)),
                ]
            ),
          ),

        ),
      ),
    );
  }
}