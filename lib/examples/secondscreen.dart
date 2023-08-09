import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/routing.dart' as route;
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        // child: ElevatedButton(
        //   child: Text('Go to Third Screen'),
        //   onPressed: (){
        //     Navigator.pushNamed(context, '/third');
        //   },
        child: ElevatedButton(
          child: Text('Go to Third Screen'),
          onPressed: ()=>Navigator.pushNamed(context,route.thirdPage ),
        ),
      ),
    );
  }
}
