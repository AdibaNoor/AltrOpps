import 'package:altropps/Pages/HomePage.dart';
import 'package:altropps/Pages/LogInPage.dart';
import 'package:altropps/Pages/RegistrationPage.dart';
import 'package:altropps/Pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Grab The opportunity before it lapses!!',
              body: 'Mentorship,Fellowship,Live Opportunities, Open source Projects all available at your fingertip.',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Get it first.',
              body: 'Get notified about new opportunities !!',
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Connect With Like minded peoples.',
              body: 'Connect with communities and learn more!!',
              //image: buildImage('assets/manthumbs.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              // title: '',
              titleWidget: Text("Join us in and never miss a deadline!.",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              image: buildImage('assets/logo.png'),
              bodyWidget: Container(
                child: Column(
                  children: [
                    // Text('',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    // SizedBox(height: 25,),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        child: Text('Login',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                        decoration: BoxDecoration(
                          color: Color(0xFFE2A5EF),
                          borderRadius: BorderRadius.circular(20),

                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegistrationPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        child: Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
                        decoration: BoxDecoration(
                          color: Color(0xFFD58DE0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // footer: ButtonWidget(
              //   text: 'Start Reading',
              //   onClicked: () => goToHome(context),
              // ),
              //image: buildImage('assets/learn.png'),
              decoration: getPageDecoration(),
            ),
          ],

          done: Text('Home', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFD58DE0),fontSize: 20)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(color: Color(0xFFD58DE0),fontSize: 20 ),),
          onSkip: () => goToHome(context),
          next: Text('Next', style: TextStyle(color: Color(0xFFD58DE0),fontSize: 20),),

          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Colors.black,
          // skip: 0,
          //nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => CustomDrawer()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFFD58DE0),
        size: Size(10, 10),
        activeSize: Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),

        pageColor: Colors.white,


      );
}
