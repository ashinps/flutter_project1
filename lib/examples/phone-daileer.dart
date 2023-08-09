import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart';

class PhoneDialer extends StatefulWidget {
  const PhoneDialer({super.key});

  @override
  State<PhoneDialer> createState() => _PhoneDialerState();
}

class _PhoneDialerState extends State<PhoneDialer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            TextButton(
            onPressed: () async {
            String telephoneNumber = '';
            String telephoneUrl = 'tel:$telephoneNumber';

            if(await canLaunch(telephoneUrl)){
              await launch(telephoneUrl);
            }else{
              throw "Error ";
            }
          }, child: Text("Call a Number")),

            TextButton(onPressed: () async{
              String telephoneNumber = "";
              String smsUrl = "sms:$telephoneNumber";
              if(await canLaunch(smsUrl)){
                await launch(smsUrl);
              }else{
                throw " Error";
              }
            }, child: Text("Send Sms")),


            TextButton(
                onPressed: () async{
                  String email = '';
                  String subject = "";
                  String body = "";
                  String emailUrl = "mailto:$email?subject=$subject&body=$body";

                  if(await canLaunch(emailUrl)){
                    await launch(emailUrl);
                  }else {
                    throw "Error";
                  }
                }, child: Text("Send an Email")),

      TextButton(
        onPressed: () async {
          const url = 'https://google.com';
          if(await canLaunch(url)){
            await launch(url,forceWebView: true);  //forceWebView is true now
          }else {
            throw 'Could not launch $url';
          }
        }, child: Text("web"),)




          ],
        ),
      ),
    );
  }
}
