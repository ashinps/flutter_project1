import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Home/homepage.dart';
import 'package:flutter_project1/travel/screens/welcome_page/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 late bool LoggedIn;

  checkLogginStatus() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    LoggedIn = pref.getBool('LoggedIn')?? false ;
  }
  
  @override
  void initState(){
    super.initState();
    checkLogginStatus();
    Timer(
      const Duration(seconds: 5),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(
      builder: (context) => LoggedIn? Homepage() : WelcomePage(),
      ));
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CircleAvatar(
                  radius: 150.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/logo.jpg'),
                ),),
           Padding(
             padding: EdgeInsets.all(60.0),
             child: CircularProgressIndicator(
               strokeWidth:3,
             ),
           ),
          ],
        ),
      ),
    );
  }
}
