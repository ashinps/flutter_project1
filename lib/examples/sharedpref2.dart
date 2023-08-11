// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'home_form.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//   bool checkValue = false;
//   SharedPreferences? sharedPreferences;
//
//   @override
//   void initState() {
//     super.initState();
//     getCredential();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white12,
//       ),
//       body: SingleChildScrollView(
//         child: _body(),
//         scrollDirection: Axis.vertical,
//       ),
//     );
//   }
//
//   Widget _body() {
//     return Container(
//       padding: EdgeInsets.only(right: 20.0, left: 20.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           TextField(
//             controller: username,
//             decoration: InputDecoration(
//                 hintText: "username",
//                 hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
//           ),
//           TextField(
//             controller: password,
//             obscureText: true,
//             decoration: InputDecoration(
//                 hintText: "password",
//                 hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
//           ),
//           CheckboxListTile(
//             value: checkValue,
//             title: Text("Remember me"),
//             controlAffinity: ListTileControlAffinity.leading,
//           ),
//           Container(
//             decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//             child: ListTile(
//               title: Text(
//                 "Login",
//                 textAlign: TextAlign.center,
//               ),
//               onTap: _navigator,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _onChanged(bool value) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     setState(() {
//       checkValue = value;
//       sharedPreferences?.setBool("check", checkValue);
//       sharedPreferences?.setString("username", username.text);
//       sharedPreferences?.setString("password", password.text);
//       getCredential();
//     });
//   }
//
//   void getCredential() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     setState(() {
//       checkValue = sharedPreferences!.getBool("check") ?? false;
//       if (checkValue) {
//         username.text = sharedPreferences!.getString("username") ?? '';
//         password.text = sharedPreferences!.getString("password") ?? '';
//       } else {
//         username.clear();
//         password.clear();
//         sharedPreferences!.clear();
//       }
//     });
//   }
//
//   void _navigator() {
//     if (username.text.isNotEmpty || password.text.isNotEmpty) {
//       Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
//               (Route<dynamic> route) => false);
//     }
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: () {
//               Navigator.of(context).pushAndRemoveUntil(
//                   MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
//                       (Route<dynamic> route) => false);
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Text(
//           "Welcome to flutter.!",
//           style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
