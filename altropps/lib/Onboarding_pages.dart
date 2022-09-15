import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import 'HomePage.dart';
class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Grab The opportunity before it lapses!!',
              body: 'Mentorship,Fellowship,Live Opportunities, Open source Projects all available at your fingertip.',
              //image: buildImage('assets/ebook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Get it first.',
              body: 'Get notified about new opportunities !!',
              //image: buildImage('assets/readingbook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Connect With Like minded peoples.',
              body: 'Connect with communities and learn more!!',
              //image: buildImage('assets/manthumbs.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Set the reminder.',
              body: 'Never miss any deadline.',
              // footer: ButtonWidget(
              //   text: 'Start Reading',
              //   onClicked: () => goToHome(context),
              // ),
              //image: buildImage('assets/learn.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Home', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFF6DEC0))),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(color: Color(0xFFF6DEC0) ),),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward, color: Color(0xFFF6DEC0),),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Colors.white,
          // skip: 0,
          //nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) =>
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MyHomePage(title: 'HomePage')),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() =>
      DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFFEFEAE5),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() =>
      PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
        pageColor: Color(0xFFF6DEC0),

      );
}