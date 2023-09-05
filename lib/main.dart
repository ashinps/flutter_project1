import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project1/Travel/Screens/Home/homepage.dart';
import 'package:flutter_project1/Travel/Screens/Login/login_page.dart';
import 'package:flutter_project1/Travel/Screens/Splash/splashscreen.dart';
import 'package:flutter_project1/Travel/Screens/register/register_page.dart';
import 'package:flutter_project1/Travel/Screens/settings/setting.dart';
import 'package:flutter_project1/examples/alarm/alarm.dart';
import 'package:flutter_project1/examples/bottom-sheet.dart';
import 'package:flutter_project1/examples/firestore_cloud/firedb.dart';
import 'package:flutter_project1/examples/maps/maps.dart';
import 'package:flutter_project1/examples/phone-daileer.dart';
import 'package:flutter_project1/examples/realtimedb/db.dart';
import 'package:flutter_project1/examples/sharedpref2.dart';
import 'package:flutter_project1/examples/sharedpreferences.dart';
import 'package:flutter_project1/examples/signin/login.dart';
import 'package:flutter_project1/examples/table.dart';
import 'package:flutter_project1/examples/textstyle.dart';
import 'package:flutter_project1/examples/tts.dart';
import 'package:flutter_project1/examples/urlexample.dart';
import 'package:flutter_project1/examples/urlexample2.dart';
import 'package:flutter_project1/examples/videoplayer.dart';
import 'package:flutter_project1/examples/weather/weather1.dart';
import 'package:flutter_project1/examples/web%20service/album.dart';
import 'package:flutter_project1/examples/web%20service/writedata.dart';
import 'package:flutter_project1/travel/screens/home/grid.dart';
import 'package:flutter_project1/travel/screens/profile/profile.dart';
import 'package:flutter_project1/travel/screens/welcome_page/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),

    home:Splash(),
    );
    }
}
