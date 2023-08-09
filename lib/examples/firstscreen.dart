import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/routing.dart'as route;
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch Second screen'),
          onPressed: ()=>
            Navigator.pushNamed(context, route.secondPage),
        ),
      ),
    );
  }
}
