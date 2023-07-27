import 'package:flutter/material.dart';
import 'package:flutter_project1/Level1/q1.dart';
import 'package:flutter_project1/Level1/q2.dart';
import 'package:flutter_project1/ListView.dart';
import 'package:flutter_project1/Travel/Screens/Splash/splashscreen.dart';
import 'package:flutter_project1/gridview.dart';
import 'package:flutter_project1/Travel/Screens/Login/login_page.dart';
import 'package:flutter_project1/Travel/Screens/register/register_page.dart';
import 'package:flutter_project1/stack.dart';
import 'package:flutter_project1/tabbar/tabmain.dart';
import 'package:flutter_project1/toast.dart';
// import 'package:flutter_project1/provider2/counter_page.dart';
// import 'package:flutter_project1/provider2/notifier_page.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_project1/provider1/account.dart';
// import 'package:flutter_project1/provider1/settings.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'loginpage',
      theme: ThemeData(
        primarySwatch: Colors.red),
      home:const Splash()
    );
    }
}
// class MyHomePage extends StatefulWidget{
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage>{
//   @override
//   Widget build(BuildContext context){
//     return ChangeNotifierProvider<Data>(
//       create: (context)=> Data(),
//       child: MaterialApp(home: AccountScreen(),routes: {
//         'account_screen':(context)=>AccountScreen(),
//         'settings_screen':(context)=> SettingsScreen(),
//       }),
//     );
//   }
// }
// class Data extends ChangeNotifier {
//   Map data = {
//     'name': 'Sammy Shark',
//     'email': 'example@example.com',
//     'age': 42
//   };
//   void updateAccount(input){
//     data=input;
//     notifyListeners();
//   }
// }
