import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Home/Homepage.dart';
import 'package:flutter_project1/Travel/Screens/Login/login_page.dart';
import 'package:flutter_project1/Travel/Screens/Splash/splashscreen.dart';
import 'package:flutter_project1/Travel/Screens/register/register_page.dart';
import 'package:flutter_project1/examples/bottom-sheet.dart';
import 'package:flutter_project1/examples/phone-daileer.dart';
import 'package:flutter_project1/examples/table.dart';
import 'package:flutter_project1/examples/urlexample.dart';
import 'package:flutter_project1/examples/urlexample2.dart';
import 'package:flutter_project1/examples/videoplayer.dart';


main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home:const Regstrpage(),
    );
    }
}
