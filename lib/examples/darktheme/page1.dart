import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/darktheme/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Page1"),
          ElevatedButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder:(context) => const Page2(),));
          }, child: Text("page2"))
        ],
      ),

    );
  }
}
