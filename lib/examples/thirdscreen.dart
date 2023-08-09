import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/routing.dart' as route;
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        // child: ElevatedButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        // child: Text('Go Back'),
        // ),
        child: ElevatedButton(
          child: Text('Go first page'),
          onPressed: ()=> Navigator.pushNamed(
              context,route.firstPage),
        ),
      ),
    );
  }
}
