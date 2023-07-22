import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 12"),
      ),


      drawer: Drawer(),


      /*body: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: const Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),*/

      /*body: Center(
        child: Container(
          height:120,
          width: 120,
          color: Colors.blue,
          child: const Align(
            alignment: Alignment(0.2, 0.6),
            child: FlutterLogo(size: 60,)

          )
        )
      )*/


  /*    body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: TextButton(
            onPressed: () {},
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.android),
                Text("Android"),
              ],
            ),
          ),
        ),
      ),
*/
   /* body: Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blueGrey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("red"),
              radius: 28,
            ),
            Text("CODESUNDAR"),
            Text("Learn flutter easily"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Start"),
            )
          ],
        ),
      )
    ),
*/

      body: Container(
        color: Colors.grey[300],
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),


    );
  }
}
