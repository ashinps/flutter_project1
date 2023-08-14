import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Home/homepage.dart';
import 'package:flutter_project1/Travel/Screens/Login/login_page.dart';
import 'package:flutter_project1/Travel/Screens/Splash/splashscreen.dart';
import 'package:flutter_project1/Travel/Screens/register/register_page.dart';
import 'package:flutter_project1/Travel/Screens/settings/setting.dart';
import 'package:flutter_project1/examples/bottom-sheet.dart';
import 'package:flutter_project1/examples/phone-daileer.dart';
import 'package:flutter_project1/examples/sharedpref2.dart';
import 'package:flutter_project1/examples/sharedpreferences.dart';
import 'package:flutter_project1/examples/signin/login.dart';
import 'package:flutter_project1/examples/table.dart';
import 'package:flutter_project1/examples/tts.dart';
import 'package:flutter_project1/examples/urlexample.dart';
import 'package:flutter_project1/examples/urlexample2.dart';
import 'package:flutter_project1/examples/videoplayer.dart';


main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home:Login(),
    );
    }
}
