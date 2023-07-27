import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Positioned(
              top: 80,
              left: 80,
              child: Container(
                height: 300,
                width:  300,
                color: Colors.red,
                alignment: Alignment.bottomRight,
                child:Text('hello',style:TextStyle(color: Colors.white,fontSize: 30) ,),
              ),
            ),Container(
              height: 250,
              width:  250,
              color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child:Text('hello',style:TextStyle(color: Colors.white,fontSize: 30) ,),
            ),Positioned(
              top: 40,
              left: 40,
              child: Container(
                height: 200,
                width:  200,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))),
                alignment: Alignment.bottomLeft,
                child:Text('hello',style:TextStyle(color: Colors.white,fontSize: 30) ,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
