import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Home/homepage.dart';
import 'sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 120,
              ),
              const SizedBox(height: 20,),
              _signInButton()
            ],
          ),
        ),
      ),
    );
  }
  Widget _signInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:40),
      child: OutlinedButton(
          onPressed: (){
            signInWithGoogle().then((result){
          if(result != null){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
          }
        });
      },
          child:const Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(height: 32, width: 32,
                image: AssetImage("assets/images/google-logo.png")),
                SizedBox(width: 5,),
                Text('SignIn With Google')],
            ),
          )
      ),
    );
  }
}
