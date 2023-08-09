import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UrlLauncher extends StatefulWidget {
  const UrlLauncher({super.key});

  @override
  State<UrlLauncher> createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
 Uri url = Uri.parse( 'https://google.com');
  Future<void> _launch() async{
    if(await canLaunchUrl(url)){
      await launch(url as String);
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                _launch();
              });
            }, child: Text('web link'))
          ],
        ),
      ),
    );
  }
}
