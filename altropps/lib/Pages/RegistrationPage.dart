import 'package:altropps/Pages/LogInPage.dart';
import 'package:altropps/Pages/ResetScreen.dart';
import 'package:altropps/Pages/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:altropps/Pages/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'ProfilePage.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {

    List images =[
      "google.png",
      "linkedin.png",
      "github.png"
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;


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
                Text('SignUp',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                // Text('Sign in into your account',style: TextStyle(fontSize: 10, color: Colors.grey[500])),

                SizedBox(height:40,),

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
                  child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration:InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password, color: Colors.purple),
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
                SizedBox(height:10,),
                // Container(margin:const EdgeInsets.only(left:20, right:20),
                //     width: w,
                //     child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.end,
                //         children: [
                //           Text('Forgot password?',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black45)),
                //         ]
                //     )),



                SizedBox(height:50),

                GestureDetector(
                  onTap: (){
                    AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                    Get.offAll(()=>ProfilePage(email: emailController.text.trim()));
                  },
                  child: Container(
                      width: w*0.4,
                      height: h*0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Loginbtn.png"
                              )
                          )
                      ),
                      child: Center(
                        child:Text('Sign up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,),),
                      )
                  ),
                ),


                // RichText(text: TextSpan(
                //     text: "Sign up using",
                //     style: TextStyle(
                //         color: Colors.grey[500],
                //         fontSize:16
                //     )
                // )),
                // SizedBox(height:5),
                // Wrap(
                //   children: List<Widget>.generate(
                //       3,
                //           (index){
                //         return CircleAvatar(
                //           radius: 25,
                //           backgroundColor: Colors.white,
                //           child: CircleAvatar(
                //             backgroundColor: Colors.white,
                //             radius: 20,
                //             backgroundImage: AssetImage(
                //                 "assets/"+images[index]
                //             ),
                //           ),
                //         );
                //       }
                //   ),
                // ),

                SizedBox(height: w*0.2),

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
      ),
    );
  }
}