import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlExample extends StatefulWidget {
  const UrlExample({super.key});

  @override
  State<UrlExample> createState() => _UrlExampleState();
}

class _UrlExampleState extends State<UrlExample> {
  final Uri url=Uri.parse('https://pub.dev');
  Future<void>_launcheurl()async{
  if(!await launchUrl(url)){
    throw Exception(
      "Could not launch"
    );
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                _launcheurl();
              });
            }, child: Text('goto pub.dev'))
          ],
        ),
      ),
    );
  }
}
