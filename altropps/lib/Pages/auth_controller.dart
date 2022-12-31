import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LogInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class AuthController extends GetxController{
  //AuthController.instance..
  static AuthController instance = Get.find();
  //email,password,name..
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //user would be notified 
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  
  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginPage());
    }
    else{
      Get.offAll(()=>MyHomePage());
    }
  }

  void register(String email, password) async{
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch (e) {
      Get.snackbar("About User", "User Meassage",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Account creation failed",
          style: TextStyle(
            color: Colors.white
          ),
        ),
          messageText: Text(
          e.toString(),
            style: TextStyle(
                color: Colors.white
            ),
      )
      );
    }
  }
  void login(String email, password) async{
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch (e) {
      Get.snackbar("About Login", "Login Meassage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
                color: Colors.white
            ),
          )
      );
    }
  }
  void logout(String email, password) async{
    await auth.signOut();
  }
}