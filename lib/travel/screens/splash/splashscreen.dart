import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Login/login_page.dart';
import 'package:flutter_project1/examples/bottom-sheet.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 7),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(
      builder: (context) => const Welcomepage(),
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
                  backgroundColor: Colors.white,
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
