import 'package:flutter/material.dart';

class tStyle extends StatefulWidget {
  const tStyle({super.key});

  @override
  State<tStyle> createState() => _tStyleState();
}

class _tStyleState extends State<tStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width: 300,
            height: 300,
            color: Colors.yellowAccent,
            child:Text("Hello world, spread wisdom and kindness",
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
            maxLines: 5,
            //textScaleFactor: 2,
            style: TextStyle(
              color: Colors.green,
              fontFamily: "ChelaOne",
              fontSize: 30,
              backgroundColor: Colors.white,
              //decoration: TextDecoration.underline
              // decoration: TextDecoration.overline
              //fontWeight: FontWeight.w500
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              letterSpacing: 10,
              wordSpacing: 5,
            ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                    hintText: "Enter email",
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                ),
              ),
            ),
            TextFormField()
          ],
        ),
      ),
    );
  }
}
